// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressRequestModel _$AddressRequestModelFromJson(Map<String, dynamic> json) {
  return _AddressRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AddressRequestModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'landmark')
  String? get landmark => throw _privateConstructorUsedError;
  @JsonKey(name: 'stateView')
  KeyValueResponseModel? get stateView => throw _privateConstructorUsedError;
  @JsonKey(name: 'cityName')
  String? get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'pincode')
  String? get pincode => throw _privateConstructorUsedError;

  /// Serializes this AddressRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressRequestModelCopyWith<AddressRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressRequestModelCopyWith<$Res> {
  factory $AddressRequestModelCopyWith(
          AddressRequestModel value, $Res Function(AddressRequestModel) then) =
      _$AddressRequestModelCopyWithImpl<$Res, AddressRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'landmark') String? landmark,
      @JsonKey(name: 'stateView') KeyValueResponseModel? stateView,
      @JsonKey(name: 'cityName') String? cityName,
      @JsonKey(name: 'pincode') String? pincode});

  $KeyValueResponseModelCopyWith<$Res>? get stateView;
}

/// @nodoc
class _$AddressRequestModelCopyWithImpl<$Res, $Val extends AddressRequestModel>
    implements $AddressRequestModelCopyWith<$Res> {
  _$AddressRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? landmark = freezed,
    Object? stateView = freezed,
    Object? cityName = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      stateView: freezed == stateView
          ? _value.stateView
          : stateView // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyValueResponseModelCopyWith<$Res>? get stateView {
    if (_value.stateView == null) {
      return null;
    }

    return $KeyValueResponseModelCopyWith<$Res>(_value.stateView!, (value) {
      return _then(_value.copyWith(stateView: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressRequestModelImplCopyWith<$Res>
    implements $AddressRequestModelCopyWith<$Res> {
  factory _$$AddressRequestModelImplCopyWith(_$AddressRequestModelImpl value,
          $Res Function(_$AddressRequestModelImpl) then) =
      __$$AddressRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'landmark') String? landmark,
      @JsonKey(name: 'stateView') KeyValueResponseModel? stateView,
      @JsonKey(name: 'cityName') String? cityName,
      @JsonKey(name: 'pincode') String? pincode});

  @override
  $KeyValueResponseModelCopyWith<$Res>? get stateView;
}

/// @nodoc
class __$$AddressRequestModelImplCopyWithImpl<$Res>
    extends _$AddressRequestModelCopyWithImpl<$Res, _$AddressRequestModelImpl>
    implements _$$AddressRequestModelImplCopyWith<$Res> {
  __$$AddressRequestModelImplCopyWithImpl(_$AddressRequestModelImpl _value,
      $Res Function(_$AddressRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? landmark = freezed,
    Object? stateView = freezed,
    Object? cityName = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_$AddressRequestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      stateView: freezed == stateView
          ? _value.stateView
          : stateView // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AddressRequestModelImpl implements _AddressRequestModel {
  const _$AddressRequestModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'landmark') this.landmark,
      @JsonKey(name: 'stateView') this.stateView,
      @JsonKey(name: 'cityName') this.cityName,
      @JsonKey(name: 'pincode') this.pincode});

  factory _$AddressRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'landmark')
  final String? landmark;
  @override
  @JsonKey(name: 'stateView')
  final KeyValueResponseModel? stateView;
  @override
  @JsonKey(name: 'cityName')
  final String? cityName;
  @override
  @JsonKey(name: 'pincode')
  final String? pincode;

  @override
  String toString() {
    return 'AddressRequestModel(id: $id, address: $address, landmark: $landmark, stateView: $stateView, cityName: $cityName, pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.stateView, stateView) ||
                other.stateView == stateView) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, address, landmark, stateView, cityName, pincode);

  /// Create a copy of AddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressRequestModelImplCopyWith<_$AddressRequestModelImpl> get copyWith =>
      __$$AddressRequestModelImplCopyWithImpl<_$AddressRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AddressRequestModel implements AddressRequestModel {
  const factory _AddressRequestModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'landmark') final String? landmark,
          @JsonKey(name: 'stateView') final KeyValueResponseModel? stateView,
          @JsonKey(name: 'cityName') final String? cityName,
          @JsonKey(name: 'pincode') final String? pincode}) =
      _$AddressRequestModelImpl;

  factory _AddressRequestModel.fromJson(Map<String, dynamic> json) =
      _$AddressRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'landmark')
  String? get landmark;
  @override
  @JsonKey(name: 'stateView')
  KeyValueResponseModel? get stateView;
  @override
  @JsonKey(name: 'cityName')
  String? get cityName;
  @override
  @JsonKey(name: 'pincode')
  String? get pincode;

  /// Create a copy of AddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressRequestModelImplCopyWith<_$AddressRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
