// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseModelImpl _$$UserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      active: json['active'] as bool?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
      hasLoggedIn: json['hasLoggedIn'] as bool?,
      roleView: json['roleView'] == null
          ? null
          : ModuleViewResponseModel.fromJson(
              json['roleView'] as Map<String, dynamic>),
      moduleViews: (json['moduleViews'] as List<dynamic>?)
          ?.map((e) =>
              ModuleViewResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$UserResponseModelImplToJson(
        _$UserResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'email': instance.email,
      'mobile': instance.mobile,
      'hasLoggedIn': instance.hasLoggedIn,
      'roleView': instance.roleView?.toJson(),
      'moduleViews': instance.moduleViews?.map((e) => e.toJson()).toList(),
      'verified': instance.verified,
    };
