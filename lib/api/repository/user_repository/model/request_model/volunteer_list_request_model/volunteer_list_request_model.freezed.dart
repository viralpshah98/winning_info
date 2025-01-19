// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'volunteer_list_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VolunteerListRequestModel _$VolunteerListRequestModelFromJson(
    Map<String, dynamic> json) {
  return _VolunteerListRequestModel.fromJson(json);
}

/// @nodoc
mixin _$VolunteerListRequestModel {
  @JsonKey(name: 'birthDate')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'anniversaryDate')
  String? get anniversaryDate => throw _privateConstructorUsedError;

  /// Serializes this VolunteerListRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VolunteerListRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VolunteerListRequestModelCopyWith<VolunteerListRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolunteerListRequestModelCopyWith<$Res> {
  factory $VolunteerListRequestModelCopyWith(VolunteerListRequestModel value,
          $Res Function(VolunteerListRequestModel) then) =
      _$VolunteerListRequestModelCopyWithImpl<$Res, VolunteerListRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'birthDate') String? birthDate,
      @JsonKey(name: 'anniversaryDate') String? anniversaryDate});
}

/// @nodoc
class _$VolunteerListRequestModelCopyWithImpl<$Res,
        $Val extends VolunteerListRequestModel>
    implements $VolunteerListRequestModelCopyWith<$Res> {
  _$VolunteerListRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VolunteerListRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthDate = freezed,
    Object? anniversaryDate = freezed,
  }) {
    return _then(_value.copyWith(
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      anniversaryDate: freezed == anniversaryDate
          ? _value.anniversaryDate
          : anniversaryDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VolunteerListRequestModelImplCopyWith<$Res>
    implements $VolunteerListRequestModelCopyWith<$Res> {
  factory _$$VolunteerListRequestModelImplCopyWith(
          _$VolunteerListRequestModelImpl value,
          $Res Function(_$VolunteerListRequestModelImpl) then) =
      __$$VolunteerListRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'birthDate') String? birthDate,
      @JsonKey(name: 'anniversaryDate') String? anniversaryDate});
}

/// @nodoc
class __$$VolunteerListRequestModelImplCopyWithImpl<$Res>
    extends _$VolunteerListRequestModelCopyWithImpl<$Res,
        _$VolunteerListRequestModelImpl>
    implements _$$VolunteerListRequestModelImplCopyWith<$Res> {
  __$$VolunteerListRequestModelImplCopyWithImpl(
      _$VolunteerListRequestModelImpl _value,
      $Res Function(_$VolunteerListRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VolunteerListRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthDate = freezed,
    Object? anniversaryDate = freezed,
  }) {
    return _then(_$VolunteerListRequestModelImpl(
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      anniversaryDate: freezed == anniversaryDate
          ? _value.anniversaryDate
          : anniversaryDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolunteerListRequestModelImpl implements _VolunteerListRequestModel {
  const _$VolunteerListRequestModelImpl(
      {@JsonKey(name: 'birthDate') this.birthDate,
      @JsonKey(name: 'anniversaryDate') this.anniversaryDate});

  factory _$VolunteerListRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolunteerListRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'birthDate')
  final String? birthDate;
  @override
  @JsonKey(name: 'anniversaryDate')
  final String? anniversaryDate;

  @override
  String toString() {
    return 'VolunteerListRequestModel(birthDate: $birthDate, anniversaryDate: $anniversaryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolunteerListRequestModelImpl &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.anniversaryDate, anniversaryDate) ||
                other.anniversaryDate == anniversaryDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, birthDate, anniversaryDate);

  /// Create a copy of VolunteerListRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VolunteerListRequestModelImplCopyWith<_$VolunteerListRequestModelImpl>
      get copyWith => __$$VolunteerListRequestModelImplCopyWithImpl<
          _$VolunteerListRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolunteerListRequestModelImplToJson(
      this,
    );
  }
}

abstract class _VolunteerListRequestModel implements VolunteerListRequestModel {
  const factory _VolunteerListRequestModel(
          {@JsonKey(name: 'birthDate') final String? birthDate,
          @JsonKey(name: 'anniversaryDate') final String? anniversaryDate}) =
      _$VolunteerListRequestModelImpl;

  factory _VolunteerListRequestModel.fromJson(Map<String, dynamic> json) =
      _$VolunteerListRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'birthDate')
  String? get birthDate;
  @override
  @JsonKey(name: 'anniversaryDate')
  String? get anniversaryDate;

  /// Create a copy of VolunteerListRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VolunteerListRequestModelImplCopyWith<_$VolunteerListRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
