import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info.freezed.dart';
part 'device_info.g.dart';

@freezed
class DeviceInfo with _$DeviceInfo {
  const factory DeviceInfo({
    @JsonKey(name: "deviceId") required String deviceId,
    @JsonKey(name: "clientName") required String clientName,
    @JsonKey(name: "clientVersion") required String clientVersion,
    @JsonKey(name: "manufacturer") required String manufacturer,
    @JsonKey(name: "model") required String model,
    @JsonKey(name: "sdkVersion") required String sdkVersion,
  }) = _DeviceInfo;

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);
}
