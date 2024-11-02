import 'package:abs_flutter/api/library_items/audio_track.dart';
import 'package:abs_flutter/api/library_items/chapter.dart';
import 'package:abs_flutter/api/library_items/device_info.dart';
import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/api/library_items/metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playback_session.freezed.dart';
part 'playback_session.g.dart';

@freezed
class PlaybackSession with _$PlaybackSession {
  const factory PlaybackSession({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "libraryId") required String libraryId,
    @JsonKey(name: "libraryItemId") required String libraryItemId,
    @JsonKey(name: "episodeId") String? episodeId,
    @JsonKey(name: "mediaType") String? mediaType,
    @JsonKey(name: "mediaMetadata") required Metadata mediaMetadata,
    @JsonKey(name: "chapters") List<Chapter>? chapters,
    @JsonKey(name: "displayTitle") String? displayTitle,
    @JsonKey(name: "displayAuthor") String? displayAuthor,
    @JsonKey(name: "coverPath") String? coverPath,
    @JsonKey(name: "duration") required double duration,
    @JsonKey(name: "playMethod") required int playMethod,
    @JsonKey(name: "mediaPlayer") required String mediaPlayer,
    @JsonKey(name: "deviceInfo") required DeviceInfo deviceInfo,
    @JsonKey(name: "serverVersion") required String serverVersion,
    @JsonKey(name: "date") required String date,
    @JsonKey(name: "dayOfWeek") String? dayOfWeek,
    @JsonKey(name: "timeListening") required double timeListening,
    @JsonKey(name: "startTime") required double startTime,
    @JsonKey(name: "currentTime") required double currentTime,
    @JsonKey(name: "startedAt") required int startedAt,
    @JsonKey(name: "updatedAt") required int updatedAt,
    @JsonKey(name: "audioTracks") required List<AudioTrack> audioTracks,
    @JsonKey(name: "libraryItem") required LibraryItem libraryItem,
  }) = _PlaybackSession;

  factory PlaybackSession.fromJson(Map<String, dynamic> json) =>
      _$PlaybackSessionFromJson(json);
}
