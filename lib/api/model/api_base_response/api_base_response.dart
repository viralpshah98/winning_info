import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_base_response.freezed.dart';

part 'api_base_response.g.dart';

@freezed
class ApiBaseResponse with _$ApiBaseResponse {
  const factory ApiBaseResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'accessToken') String? accessToken,
    @JsonKey(name: 'refreshToken') String? refreshToken,
    @JsonKey(name: 'deviceToken') String? deviceToken,
    @JsonKey(name: 'hasError') bool? hasError,
    @JsonKey(name: 'view') dynamic view,
    @JsonKey(name: 'list') List<dynamic>? list,
    @JsonKey(name: 'records') int? records,
  }) = _ApiBaseResponse;

  factory ApiBaseResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiBaseResponseFromJson(json);
}
