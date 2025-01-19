// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_view_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressViewResponseModelImpl _$$AddressViewResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressViewResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      active: json['active'] as bool?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      countryCode: json['countryCode'] == null
          ? null
          : KeyValueResponseModel.fromJson(
              json['countryCode'] as Map<String, dynamic>),
      mobile: json['mobile'] as String?,
      birthday: json['birthday'] as String?,
      marriageAnniversaryDate: json['marriageAnniversaryDate'] as String?,
      addressView: json['addressView'] == null
          ? null
          : KeyValueResponseModel.fromJson(
              json['addressView'] as Map<String, dynamic>),
      shortFormOfName: json['shortFormOfName'] as String?,
    );

Map<String, dynamic> _$$AddressViewResponseModelImplToJson(
        _$AddressViewResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'countryCode': instance.countryCode?.toJson(),
      'mobile': instance.mobile,
      'birthday': instance.birthday,
      'marriageAnniversaryDate': instance.marriageAnniversaryDate,
      'addressView': instance.addressView?.toJson(),
      'shortFormOfName': instance.shortFormOfName,
    };
