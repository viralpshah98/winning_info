import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winning_info/api/api_base.dart';

part 'http_header_response_model.freezed.dart';
part 'http_header_response_model.g.dart';

@freezed
class HTTPHeaderResponseModel with _$HTTPHeaderResponseModel {
  const factory HTTPHeaderResponseModel({
    @JsonKey(name: kAuthorizationKey) String? authorizationToken,
    @JsonKey(name: kOrigin) @Default('app.winninginfo.in') String origin,
    @JsonKey(name: kApplicationType) @Default('application/json') String contentType,
  }) = _HTTPHeaderResponseModel;

  factory HTTPHeaderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HTTPHeaderResponseModelFromJson(json);
}
