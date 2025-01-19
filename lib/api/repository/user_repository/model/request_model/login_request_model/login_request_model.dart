
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.freezed.dart';

part 'login_request_model.g.dart';

@freezed
class LoginRequestModel with _$LoginRequestModel {
  @JsonSerializable(explicitToJson: true)
  const factory LoginRequestModel({
    @JsonKey(name: 'loginId') String? loginId,
    @JsonKey(name: 'password') String? password,
  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}