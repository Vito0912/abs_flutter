// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceInfoImpl _$$DeviceInfoImplFromJson(Map<String, dynamic> json) =>
    _$DeviceInfoImpl(
      deviceId: json['deviceId'] as String?,
      clientName: json['clientName'] as String?,
      clientVersion: json['clientVersion'] as String?,
      manufacturer: json['manufacturer'] as String?,
      model: json['model'] as String?,
      sdkVersion: json['sdkVersion'] as String?,
    );

Map<String, dynamic> _$$DeviceInfoImplToJson(_$DeviceInfoImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'clientName': instance.clientName,
      'clientVersion': instance.clientVersion,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'sdkVersion': instance.sdkVersion,
    };
