
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_value_response_model.freezed.dart';

part 'key_value_response_model.g.dart';

@freezed
class KeyValueResponseModel with _$KeyValueResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory KeyValueResponseModel({
    @JsonKey(name: 'value') String? value,
    @JsonKey(name: 'key') int? key,
  }) = _KeyValueResponseModel;

  factory KeyValueResponseModel.fromJson(Map<String, dynamic> json) =>
      _$KeyValueResponseModelFromJson(json);
}