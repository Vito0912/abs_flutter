import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info.freezed.dart';
part 'device_info.g.dart';

@freezed
class DeviceInfo with _$DeviceInfo {
  const factory DeviceInfo({
    @JsonKey(name: "deviceId") String? deviceId,
    @JsonKey(name: "clientName") String? clientName,
    @JsonKey(name: "clientVersion") String? clientVersion,
    @JsonKey(name: "manufacturer") String? manufacturer,
    @JsonKey(name: "model") String? model,
    @JsonKey(name: "sdkVersion") String? sdkVersion,
  }) = _DeviceInfo;

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);
}
