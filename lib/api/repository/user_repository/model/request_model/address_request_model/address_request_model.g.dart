// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressRequestModelImpl _$$AddressRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressRequestModelImpl(
      id: (json['id'] as num?)?.toInt(),
      address: json['address'] as String?,
      landmark: json['landmark'] as String?,
      stateView: json['stateView'] == null
          ? null
          : KeyValueResponseModel.fromJson(
              json['stateView'] as Map<String, dynamic>),
      cityName: json['cityName'] as String?,
      pincode: json['pincode'] as String?,
    );

Map<String, dynamic> _$$AddressRequestModelImplToJson(
        _$AddressRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'landmark': instance.landmark,
      'stateView': instance.stateView?.toJson(),
      'cityName': instance.cityName,
      'pincode': instance.pincode,
    };
