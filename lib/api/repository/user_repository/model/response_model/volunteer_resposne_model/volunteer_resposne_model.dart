
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winning_info/api/repository/user_repository/model/request_model/address_request_model/address_request_model.dart';
import 'package:winning_info/api/repository/user_repository/model/response_model/response_model.dart';

part 'volunteer_resposne_model.freezed.dart';

part 'volunteer_resposne_model.g.dart';

@freezed
class VolunteerResponseModel with _$VolunteerResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory VolunteerResponseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'active') bool? active,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'middleName') String? middleName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'epicNumber') String? epicNumber,
    @JsonKey(name: 'countryCode') KeyValueResponseModel? countryCode,
    @JsonKey(name: 'mobile') String? mobile,
    @JsonKey(name: 'birthDate') String? birthday,
    @JsonKey(name: 'marriageAnniversaryDate') String? marriageAnniversaryDate,
    @JsonKey(name: 'addressView') AddressRequestModel? addressView,
    @JsonKey(name: 'shortFormOfName') String? shortFormOfName,
  }) = _VolunteerResponseModel;

  factory VolunteerResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VolunteerResponseModelFromJson(json);
}