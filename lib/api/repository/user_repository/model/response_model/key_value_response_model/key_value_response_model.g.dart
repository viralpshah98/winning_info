// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_value_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeyValueResponseModelImpl _$$KeyValueResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$KeyValueResponseModelImpl(
      value: json['value'] as String?,
      key: (json['key'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$KeyValueResponseModelImplToJson(
        _$KeyValueResponseModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'key': instance.key,
    };
