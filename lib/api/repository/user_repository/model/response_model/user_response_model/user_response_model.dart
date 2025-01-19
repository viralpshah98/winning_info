
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winning_info/api/repository/user_repository/model/response_model/response_model.dart';

part 'user_response_model.freezed.dart';

part 'user_response_model.g.dart';

@freezed
class UserResponseModel with _$UserResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserResponseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'active') bool? active,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'mobile') String? mobile,
    @JsonKey(name: 'hasLoggedIn') bool? hasLoggedIn,
    @JsonKey(name: 'roleView') ModuleViewResponseModel? roleView,
    @JsonKey(name: 'moduleViews') List<ModuleViewResponseModel>? moduleViews,
    @JsonKey(name: 'verified') bool? verified,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}