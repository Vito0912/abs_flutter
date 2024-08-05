import 'dart:convert';
import 'dart:developer';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/globals.dart';
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

    try {
      playerStatus.setLoading(id);
      CancelToken cancelToken = CancelToken();
      playerStatus.setCancelToken(cancelToken);


      //TODO: Currently always using hls
      DeviceInfoBuilder deviceInfoBuilder = DeviceInfoBuilder();
      deviceInfoBuilder.clientName = appName;
      deviceInfoBuilder.clientVersion = version;

      final response = await api.getLibraryItemApi().playLibraryItem(
            id: id,
            cancelToken: cancelToken,
            mediaPlayer: 'html5',
            deviceInfo: deviceInfoBuilder.build(),
            supportedMimeTypes: BuiltList<String>([
              'audio/flac',
              'audio/mpeg',
              'audio/mp4',
              'audio/ogg',
              'audio/aac'
                  'audio/webm',
            ]),
            forceDirectPlay: false,
            forceTranscode: false,
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

      MediaItem mediaItem = MediaItem(
          id:
              '${currentUser?.server!.url}${playback.audioTracks![0].contentUrl!}?token=${currentUser?.token!}',
          album: playback.mediaMetadata?.series?.toList().join(', '),
          title: playback.displayTitle!,
          artist: playback.displayAuthor!,
          duration:
              Duration(seconds: playback.audioTracks![0].duration!.round()),
          artUri: Uri.parse(
              '${currentUser!.server!.url}/api/items/$id/cover?token=${currentUser.token}'),
          extras: {
            'libraryItemId': id,
            'sessionId': playback.id,
            'chapters': playback.chapters
                ?.map((e) => {
                      'title': e?.title,
                      'start': e?.start,
                      'end': e?.end,
                    })
                .toList(),
          });

      log('Adding to queue: ${mediaItem.title} from ${currentUser?.server!.url}${playback.audioTracks![0].contentUrl!}?token=${currentUser?.token!}');

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
