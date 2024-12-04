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
    @JsonKey(name: "mediaMetadata") Metadata? mediaMetadata,
    @JsonKey(name: "chapters") List<Chapter>? chapters,
    @JsonKey(name: "displayTitle") String? displayTitle,
    @JsonKey(name: "displayAuthor") String? displayAuthor,
    @JsonKey(name: "coverPath") String? coverPath,
    @JsonKey(name: "duration") double? duration,
    @JsonKey(name: "playMethod") int? playMethod,
    @JsonKey(name: "mediaPlayer") String? mediaPlayer,
    @JsonKey(name: "deviceInfo") DeviceInfo? deviceInfo,
    @JsonKey(name: "serverVersion") String? serverVersion,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "dayOfWeek") String? dayOfWeek,
    @JsonKey(name: "timeListening") double? timeListening,
    @JsonKey(name: "startTime") double? startTime,
    @JsonKey(name: "currentTime") double? currentTime,
    @JsonKey(name: "startedAt") int? startedAt,
    @JsonKey(name: "updatedAt") int? updatedAt,
    @JsonKey(name: "audioTracks") List<AudioTrack>? audioTracks,
    @JsonKey(name: "libraryItem") LibraryItem? libraryItem,
  }) = _PlaybackSession;

  factory PlaybackSession.fromJson(Map<String, dynamic> json) =>
      _$PlaybackSessionFromJson(json);
}
