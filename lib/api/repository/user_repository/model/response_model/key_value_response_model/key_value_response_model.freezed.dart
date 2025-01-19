// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_value_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeyValueResponseModel _$KeyValueResponseModelFromJson(
    Map<String, dynamic> json) {
  return _KeyValueResponseModel.fromJson(json);
}

/// @nodoc
mixin _$KeyValueResponseModel {
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'key')
  int? get key => throw _privateConstructorUsedError;

  /// Serializes this KeyValueResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyValueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyValueResponseModelCopyWith<KeyValueResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyValueResponseModelCopyWith<$Res> {
  factory $KeyValueResponseModelCopyWith(KeyValueResponseModel value,
          $Res Function(KeyValueResponseModel) then) =
      _$KeyValueResponseModelCopyWithImpl<$Res, KeyValueResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String? value, @JsonKey(name: 'key') int? key});
}

/// @nodoc
class _$KeyValueResponseModelCopyWithImpl<$Res,
        $Val extends KeyValueResponseModel>
    implements $KeyValueResponseModelCopyWith<$Res> {
  _$KeyValueResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyValueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyValueResponseModelImplCopyWith<$Res>
    implements $KeyValueResponseModelCopyWith<$Res> {
  factory _$$KeyValueResponseModelImplCopyWith(
          _$KeyValueResponseModelImpl value,
          $Res Function(_$KeyValueResponseModelImpl) then) =
      __$$KeyValueResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String? value, @JsonKey(name: 'key') int? key});
}

/// @nodoc
class __$$KeyValueResponseModelImplCopyWithImpl<$Res>
    extends _$KeyValueResponseModelCopyWithImpl<$Res,
        _$KeyValueResponseModelImpl>
    implements _$$KeyValueResponseModelImplCopyWith<$Res> {
  __$$KeyValueResponseModelImplCopyWithImpl(_$KeyValueResponseModelImpl _value,
      $Res Function(_$KeyValueResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyValueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? key = freezed,
  }) {
    return _then(_$KeyValueResponseModelImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$KeyValueResponseModelImpl implements _KeyValueResponseModel {
  const _$KeyValueResponseModelImpl(
      {@JsonKey(name: 'value') this.value, @JsonKey(name: 'key') this.key});

  factory _$KeyValueResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyValueResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String? value;
  @override
  @JsonKey(name: 'key')
  final int? key;

  @override
  String toString() {
    return 'KeyValueResponseModel(value: $value, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyValueResponseModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, key);

  /// Create a copy of KeyValueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyValueResponseModelImplCopyWith<_$KeyValueResponseModelImpl>
      get copyWith => __$$KeyValueResponseModelImplCopyWithImpl<
          _$KeyValueResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyValueResponseModelImplToJson(
      this,
    );
  }
}

abstract class _KeyValueResponseModel implements KeyValueResponseModel {
  const factory _KeyValueResponseModel(
      {@JsonKey(name: 'value') final String? value,
      @JsonKey(name: 'key') final int? key}) = _$KeyValueResponseModelImpl;

  factory _KeyValueResponseModel.fromJson(Map<String, dynamic> json) =
      _$KeyValueResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String? get value;
  @override
  @JsonKey(name: 'key')
  int? get key;

  /// Create a copy of KeyValueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyValueResponseModelImplCopyWith<_$KeyValueResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
