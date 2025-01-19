// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_header_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HTTPHeaderResponseModelImpl _$$HTTPHeaderResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HTTPHeaderResponseModelImpl(
      authorizationToken: json['Authorization'] as String?,
      origin: json['Origin'] as String? ?? 'app.winninginfo.in',
      contentType: json['Content-Type'] as String? ?? 'application/json',
    );

Map<String, dynamic> _$$HTTPHeaderResponseModelImplToJson(
        _$HTTPHeaderResponseModelImpl instance) =>
    <String, dynamic>{
      'Authorization': instance.authorizationToken,
      'Origin': instance.origin,
      'Content-Type': instance.contentType,
    };
