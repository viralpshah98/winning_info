
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winning_info/api/repository/repoitory.dart';

part 'address_request_model.freezed.dart';

part 'address_request_model.g.dart';

@freezed
class AddressRequestModel with _$AddressRequestModel {
  @JsonSerializable(explicitToJson: true)
  const factory AddressRequestModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'landmark') String? landmark,
    @JsonKey(name: 'stateView') KeyValueResponseModel? stateView,
    @JsonKey(name: 'cityName') String? cityName,
    @JsonKey(name: 'pincode') String? pincode,
  }) = _AddressRequestModel;

  factory AddressRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddressRequestModelFromJson(json);
}