// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_volunteers_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddVolunteersRequestModelImpl _$$AddVolunteersRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddVolunteersRequestModelImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      countryCode: json['countryCode'] == null
          ? null
          : KeyValueResponseModel.fromJson(
              json['countryCode'] as Map<String, dynamic>),
      mobile: json['mobile'] as String?,
      gender: json['gender'] == null
          ? null
          : KeyValueResponseModel.fromJson(
              json['gender'] as Map<String, dynamic>),
      birthDate: json['birthDate'] as String?,
      marriageAnniversaryDate: json['marriageAnniversaryDate'] as String?,
      epicNumber: json['epicNumber'] as String?,
      addressView: json['addressView'] == null
          ? null
          : AddressRequestModel.fromJson(
              json['addressView'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddVolunteersRequestModelImplToJson(
        _$AddVolunteersRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'email': instance.email,
      'countryCode': instance.countryCode?.toJson(),
      'mobile': instance.mobile,
      'gender': instance.gender?.toJson(),
      'birthDate': instance.birthDate,
      'marriageAnniversaryDate': instance.marriageAnniversaryDate,
      'epicNumber': instance.epicNumber,
      'addressView': instance.addressView?.toJson(),
    };
