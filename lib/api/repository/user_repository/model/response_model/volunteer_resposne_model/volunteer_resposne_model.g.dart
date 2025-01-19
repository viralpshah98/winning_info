// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volunteer_resposne_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VolunteerResponseModelImpl _$$VolunteerResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VolunteerResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      active: json['active'] as bool?,
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      epicNumber: json['epicNumber'] as String?,
      countryCode: json['countryCode'] == null
          ? null
          : KeyValueResponseModel.fromJson(
              json['countryCode'] as Map<String, dynamic>),
      mobile: json['mobile'] as String?,
      birthday: json['birthDate'] as String?,
      marriageAnniversaryDate: json['marriageAnniversaryDate'] as String?,
      addressView: json['addressView'] == null
          ? null
          : AddressRequestModel.fromJson(
              json['addressView'] as Map<String, dynamic>),
      shortFormOfName: json['shortFormOfName'] as String?,
    );

Map<String, dynamic> _$$VolunteerResponseModelImplToJson(
        _$VolunteerResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'email': instance.email,
      'epicNumber': instance.epicNumber,
      'countryCode': instance.countryCode?.toJson(),
      'mobile': instance.mobile,
      'birthDate': instance.birthday,
      'marriageAnniversaryDate': instance.marriageAnniversaryDate,
      'addressView': instance.addressView?.toJson(),
      'shortFormOfName': instance.shortFormOfName,
    };
