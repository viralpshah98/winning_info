
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winning_info/api/repository/user_repository/model/response_model/response_model.dart';

part 'address_view_response_model.freezed.dart';

part 'address_view_response_model.g.dart';

@freezed
class AddressViewResponseModel with _$AddressViewResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory AddressViewResponseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'active') bool? active,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'countryCode') KeyValueResponseModel? countryCode,
    @JsonKey(name: 'mobile') String? mobile,
    @JsonKey(name: 'birthday') String? birthday,
    @JsonKey(name: 'marriageAnniversaryDate') String? marriageAnniversaryDate,
    @JsonKey(name: 'addressView') KeyValueResponseModel? addressView,
    @JsonKey(name: 'shortFormOfName') String? shortFormOfName,
  }) = _AddressViewResponseModel;

  factory AddressViewResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddressViewResponseModelFromJson(json);
}