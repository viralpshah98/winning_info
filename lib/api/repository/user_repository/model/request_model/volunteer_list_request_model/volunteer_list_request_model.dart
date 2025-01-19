
import 'package:freezed_annotation/freezed_annotation.dart';

part 'volunteer_list_request_model.freezed.dart';

part 'volunteer_list_request_model.g.dart';

@freezed
class VolunteerListRequestModel with _$VolunteerListRequestModel {
  const factory VolunteerListRequestModel({
    @JsonKey(name: 'birthDate') String? birthDate,
    @JsonKey(name: 'anniversaryDate') String? anniversaryDate,
}) = _VolunteerListRequestModel;

  factory VolunteerListRequestModel.fromJson(Map<String, dynamic> json) =>
      _$VolunteerListRequestModelFromJson(json);
}