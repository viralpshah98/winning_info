
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winning_info/api/repository/user_repository/model/response_model/response_model.dart';

part 'module_view_response_model.freezed.dart';

part 'module_view_response_model.g.dart';

@freezed
class ModuleViewResponseModel with _$ModuleViewResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory ModuleViewResponseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'typeId') KeyValueResponseModel? typeId,
    @JsonKey(name: 'rightsViews') List<ModuleViewResponseModel>? rightsViews,
  }) = _ModuleViewResponseModel;

  factory ModuleViewResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ModuleViewResponseModelFromJson(json);
}