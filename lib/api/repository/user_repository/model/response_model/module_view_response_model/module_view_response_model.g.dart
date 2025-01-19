// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_view_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModuleViewResponseModelImpl _$$ModuleViewResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ModuleViewResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      typeId: json['typeId'] == null
          ? null
          : KeyValueResponseModel.fromJson(
              json['typeId'] as Map<String, dynamic>),
      rightsViews: (json['rightsViews'] as List<dynamic>?)
          ?.map((e) =>
              ModuleViewResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModuleViewResponseModelImplToJson(
        _$ModuleViewResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'typeId': instance.typeId?.toJson(),
      'rightsViews': instance.rightsViews?.map((e) => e.toJson()).toList(),
    };
