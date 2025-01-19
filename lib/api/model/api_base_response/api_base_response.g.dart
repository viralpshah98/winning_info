// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiBaseResponseImpl _$$ApiBaseResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiBaseResponseImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      deviceToken: json['deviceToken'] as String?,
      hasError: json['hasError'] as bool?,
      view: json['view'],
      list: json['list'] as List<dynamic>?,
      records: (json['records'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ApiBaseResponseImplToJson(
        _$ApiBaseResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'deviceToken': instance.deviceToken,
      'hasError': instance.hasError,
      'view': instance.view,
      'list': instance.list,
      'records': instance.records,
    };
