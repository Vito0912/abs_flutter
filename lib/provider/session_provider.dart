import 'dart:convert';
import 'dart:developer';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/provider/library_item_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:audio_service/audio_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:built_collection/built_collection.dart';

class PlaybackSessionNotifier
    extends StateNotifier<AsyncValue<Response<PlaybackSessionExpanded>?>> {
  final Ref ref;
  Response<PlaybackSessionExpanded>? _session;
  PlaybackSessionBookExpanded? _book;

  PlaybackSessionNotifier(this.ref) : super(const AsyncValue.loading());

  Future<void> load(String id) async {
    final AbsApi? api = ref.read(apiProvider);
    final playerStatus = ref.read(playStatusProvider.notifier);
    final player = ref.read(playerProvider.notifier);
    final currentUser = ref.read(currentUserProvider);

    if (api == null) {
      state = const AsyncValue.error('API is not available', StackTrace.empty);
      return;
    }

    final downloads = ref.read(downloadListProvider.notifier);
    final download = downloads.getDownload(id);
    final connection = ref.read(connectionProvider);

    if(connection) {


    try {
      playerStatus.setLoading(id);
      CancelToken cancelToken = CancelToken();
      playerStatus.setCancelToken(cancelToken);

      //TODO: Currently always using hls
      DeviceInfoBuilder deviceInfoBuilder = DeviceInfoBuilder();
      deviceInfoBuilder.clientName = appName;
      deviceInfoBuilder.clientVersion = version;
      deviceInfoBuilder.deviceId = currentUser?.hashCode.toString();

      PlayLibraryItemRequestBuilder requestBuilder = PlayLibraryItemRequestBuilder()
      ..mediaPlayer = 'abs_flutter w/ just_audio'
      ..deviceInfo = deviceInfoBuilder
      ..supportedMimeTypes = ListBuilder<String>([
        'audio/flac',
        'audio/mpeg',
        'audio/mp4',
        'audio/ogg',
        'audio/aac'
            'audio/webm',
      ])
      ..forceDirectPlay = false
      ..forceTranscode = false;
      ;

      final response = await api.getLibraryItemApi().playLibraryItem(
            id: id,
            cancelToken: cancelToken,
            playLibraryItemRequest: requestBuilder.build(),
          );
      _session = response;

      late final PlaybackSessionBookExpanded playback;
      if (response.data!.oneOf.value is PlaybackSessionBookExpanded) {
        playback = response.data!.oneOf.value as PlaybackSessionBookExpanded;
        _book = playback;
      } else {
        state = const AsyncValue.error(
            'PlaybackSession is not a book', StackTrace.empty);
        return;
      }

      final streamUrl =
          '${currentUser?.server!.url}${playback.audioTracks![0].contentUrl!}?token=${currentUser?.token!}';

      String? path;
      if (download != null) {
        path = download.filePath;
      } else {
        path = streamUrl;
      }

      MediaItem mediaItem = MediaItem(
          id: path!,
          album: playback.mediaMetadata?.series?.toList().join(', '),
          title: playback.displayTitle!,
          displaySubtitle: playback.mediaMetadata!.subtitle!,
          artist: playback.displayAuthor!,
          duration:
              Duration(seconds: playback.audioTracks![0].duration!.round()),
          artUri: Uri.parse(
              '${currentUser!.server!.url}/api/items/$id/cover?token=${currentUser.token}'),
          extras: {
            'libraryItemId': id,
            'sessionId': playback.id,
            'streaming': download == null,
            'chapters': playback.chapters
                ?.map((e) => {
                      'title': e?.title,
                      'start': e?.start,
                      'end': e?.end,
                    })
                .toList(),
          });

      log('Adding to queue: ${mediaItem.title} from ${currentUser.server!.url}${playback.audioTracks![0].contentUrl!}?token=${currentUser.token!}');

      await player.playMediaItem(mediaItem);

      state = AsyncValue.data(response);

      log('Playing: ${mediaItem.title}');
    } catch (e) {
      playerStatus.setPlayStatus(PlayerStatus.stopped, "Session error");
      log(e.toString());
      if (e is DioException) {
        if (e.response != null && e.response!.data != null) {
          log(e.response!.data.toString());
          try {
            final sessionId = e.response!.data!['session_id'];
            if (sessionId == null) {
              state = AsyncValue.error(e, e.stackTrace);
              return;
            }
            try {
              log("Trying to delete session: " + sessionId);
              await api.getSessionApi().closeSession(id: sessionId);
            } catch (e) {
              log(e.toString());
            }
            try {
              await api.getSessionApi().deleteSession(id: sessionId);
            } catch (e) {
              log(e.toString());
            }
          } catch (e) {
            log(e.toString());
          }
        }
        state = AsyncValue.error(e, e.stackTrace);
      } else {
        state = AsyncValue.error(e, StackTrace.empty);
      }
    }

    } else {
      // Offline playback
      final item = ref.read(itemProvider(id));
      if(item.value == null || download == null) {
        log('Could not create session for offline playback');
        state = const AsyncValue.error('Item is not available', StackTrace.empty);
        return;
      }

      MediaItem mediaItem = MediaItem(
          id: download.filePath!,
          album: item.value?.media?.metadata?.series?.toList().join(', '),
          title: download.displayName,
          displaySubtitle: item.value?.media?.metadata?.subtitle,
          artist: item.value?.media?.metadata?.authors?.toList().join(','),
          artUri: Uri.parse(
              '${currentUser!.server!.url}/api/items/$id/cover?token=${currentUser.token}'),
          duration:
          Duration(seconds: item.value!.media!.audioFiles![0].duration!.round()),
          extras: {
            'libraryItemId': id,
            'streaming': false,
            'chapters': item.value!.media!.chapters
                ?.map((e) => {
              'title': e?.title,
              'start': e?.start,
              'end': e?.end,
            })
                .toList(),
          });

      await player.playMediaItem(mediaItem);

    }
  }

  Future<bool> closeOpenSession() async {
    final AbsApi? api = ref.read(apiProvider);
    final currentUser = ref.read(currentUserProvider);
    final playerStatus = ref.read(playStatusProvider.notifier);

    if (api == null ||
        _session == null ||
        currentUser == null ||
        _session!.data == null) {
      return false;
    }

    bool returnValue = false;

    // Delay the closing of the session to allow the player to send the last progress
    await Future.delayed(const Duration(seconds: 1), () async {
      try {
        if (_book != null) api.getSessionApi().closeSession(id: _book!.id!);
        _session = null;
        returnValue = true;
        playerStatus.setPlayStatus(PlayerStatus.stopped, "Close session");
        return true;
      } catch (e) {
        log(e.toString());
        returnValue = false;
        return false;
      }
    });

    return returnValue;
  }

  PlaybackSessionBookExpanded? get session => _book;
}

final sessionProvider = StateNotifierProvider<PlaybackSessionNotifier,
    AsyncValue<Response<PlaybackSessionExpanded>?>>((ref) {
  return PlaybackSessionNotifier(ref);
});
