
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winning_info/api/repository/user_repository/model/request_model/address_request_model/address_request_model.dart';
import 'package:winning_info/api/repository/user_repository/model/response_model/key_value_response_model/key_value_response_model.dart';

part 'add_volunteers_request_model.freezed.dart';

part 'add_volunteers_request_model.g.dart';

@freezed
class AddVolunteersRequestModel with _$AddVolunteersRequestModel {
  @JsonSerializable(explicitToJson: true)
  const factory AddVolunteersRequestModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'middleName') String? middleName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'countryCode') KeyValueResponseModel? countryCode,
    @JsonKey(name: 'mobile') String? mobile,
    @JsonKey(name: 'gender') KeyValueResponseModel? gender,
    @JsonKey(name: 'birthDate') String? birthDate,
    @JsonKey(name: 'marriageAnniversaryDate') String? marriageAnniversaryDate,
    @JsonKey(name: 'epicNumber') String? epicNumber,
    @JsonKey(name: 'addressView') AddressRequestModel? addressView,
  }) = _AddVolunteersRequestModel;

  factory AddVolunteersRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddVolunteersRequestModelFromJson(json);
}