// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) {
  return _UserResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserResponseModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'active')
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile')
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasLoggedIn')
  bool? get hasLoggedIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'roleView')
  ModuleViewResponseModel? get roleView => throw _privateConstructorUsedError;
  @JsonKey(name: 'moduleViews')
  List<ModuleViewResponseModel>? get moduleViews =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'verified')
  bool? get verified => throw _privateConstructorUsedError;

  /// Serializes this UserResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResponseModelCopyWith<UserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseModelCopyWith<$Res> {
  factory $UserResponseModelCopyWith(
          UserResponseModel value, $Res Function(UserResponseModel) then) =
      _$UserResponseModelCopyWithImpl<$Res, UserResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'active') bool? active,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'hasLoggedIn') bool? hasLoggedIn,
      @JsonKey(name: 'roleView') ModuleViewResponseModel? roleView,
      @JsonKey(name: 'moduleViews') List<ModuleViewResponseModel>? moduleViews,
      @JsonKey(name: 'verified') bool? verified});

  $ModuleViewResponseModelCopyWith<$Res>? get roleView;
}

/// @nodoc
class _$UserResponseModelCopyWithImpl<$Res, $Val extends UserResponseModel>
    implements $UserResponseModelCopyWith<$Res> {
  _$UserResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? hasLoggedIn = freezed,
    Object? roleView = freezed,
    Object? moduleViews = freezed,
    Object? verified = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      hasLoggedIn: freezed == hasLoggedIn
          ? _value.hasLoggedIn
          : hasLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      roleView: freezed == roleView
          ? _value.roleView
          : roleView // ignore: cast_nullable_to_non_nullable
              as ModuleViewResponseModel?,
      moduleViews: freezed == moduleViews
          ? _value.moduleViews
          : moduleViews // ignore: cast_nullable_to_non_nullable
              as List<ModuleViewResponseModel>?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModuleViewResponseModelCopyWith<$Res>? get roleView {
    if (_value.roleView == null) {
      return null;
    }

    return $ModuleViewResponseModelCopyWith<$Res>(_value.roleView!, (value) {
      return _then(_value.copyWith(roleView: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResponseModelImplCopyWith<$Res>
    implements $UserResponseModelCopyWith<$Res> {
  factory _$$UserResponseModelImplCopyWith(_$UserResponseModelImpl value,
          $Res Function(_$UserResponseModelImpl) then) =
      __$$UserResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'active') bool? active,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'hasLoggedIn') bool? hasLoggedIn,
      @JsonKey(name: 'roleView') ModuleViewResponseModel? roleView,
      @JsonKey(name: 'moduleViews') List<ModuleViewResponseModel>? moduleViews,
      @JsonKey(name: 'verified') bool? verified});

  @override
  $ModuleViewResponseModelCopyWith<$Res>? get roleView;
}

/// @nodoc
class __$$UserResponseModelImplCopyWithImpl<$Res>
    extends _$UserResponseModelCopyWithImpl<$Res, _$UserResponseModelImpl>
    implements _$$UserResponseModelImplCopyWith<$Res> {
  __$$UserResponseModelImplCopyWithImpl(_$UserResponseModelImpl _value,
      $Res Function(_$UserResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? hasLoggedIn = freezed,
    Object? roleView = freezed,
    Object? moduleViews = freezed,
    Object? verified = freezed,
  }) {
    return _then(_$UserResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      hasLoggedIn: freezed == hasLoggedIn
          ? _value.hasLoggedIn
          : hasLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      roleView: freezed == roleView
          ? _value.roleView
          : roleView // ignore: cast_nullable_to_non_nullable
              as ModuleViewResponseModel?,
      moduleViews: freezed == moduleViews
          ? _value._moduleViews
          : moduleViews // ignore: cast_nullable_to_non_nullable
              as List<ModuleViewResponseModel>?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserResponseModelImpl implements _UserResponseModel {
  const _$UserResponseModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'active') this.active,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'mobile') this.mobile,
      @JsonKey(name: 'hasLoggedIn') this.hasLoggedIn,
      @JsonKey(name: 'roleView') this.roleView,
      @JsonKey(name: 'moduleViews')
      final List<ModuleViewResponseModel>? moduleViews,
      @JsonKey(name: 'verified') this.verified})
      : _moduleViews = moduleViews;

  factory _$UserResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'active')
  final bool? active;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'mobile')
  final String? mobile;
  @override
  @JsonKey(name: 'hasLoggedIn')
  final bool? hasLoggedIn;
  @override
  @JsonKey(name: 'roleView')
  final ModuleViewResponseModel? roleView;
  final List<ModuleViewResponseModel>? _moduleViews;
  @override
  @JsonKey(name: 'moduleViews')
  List<ModuleViewResponseModel>? get moduleViews {
    final value = _moduleViews;
    if (value == null) return null;
    if (_moduleViews is EqualUnmodifiableListView) return _moduleViews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'verified')
  final bool? verified;

  @override
  String toString() {
    return 'UserResponseModel(id: $id, active: $active, email: $email, mobile: $mobile, hasLoggedIn: $hasLoggedIn, roleView: $roleView, moduleViews: $moduleViews, verified: $verified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.hasLoggedIn, hasLoggedIn) ||
                other.hasLoggedIn == hasLoggedIn) &&
            (identical(other.roleView, roleView) ||
                other.roleView == roleView) &&
            const DeepCollectionEquality()
                .equals(other._moduleViews, _moduleViews) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      active,
      email,
      mobile,
      hasLoggedIn,
      roleView,
      const DeepCollectionEquality().hash(_moduleViews),
      verified);

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseModelImplCopyWith<_$UserResponseModelImpl> get copyWith =>
      __$$UserResponseModelImplCopyWithImpl<_$UserResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserResponseModel implements UserResponseModel {
  const factory _UserResponseModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'active') final bool? active,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'mobile') final String? mobile,
          @JsonKey(name: 'hasLoggedIn') final bool? hasLoggedIn,
          @JsonKey(name: 'roleView') final ModuleViewResponseModel? roleView,
          @JsonKey(name: 'moduleViews')
          final List<ModuleViewResponseModel>? moduleViews,
          @JsonKey(name: 'verified') final bool? verified}) =
      _$UserResponseModelImpl;

  factory _UserResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'active')
  bool? get active;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'mobile')
  String? get mobile;
  @override
  @JsonKey(name: 'hasLoggedIn')
  bool? get hasLoggedIn;
  @override
  @JsonKey(name: 'roleView')
  ModuleViewResponseModel? get roleView;
  @override
  @JsonKey(name: 'moduleViews')
  List<ModuleViewResponseModel>? get moduleViews;
  @override
  @JsonKey(name: 'verified')
  bool? get verified;

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResponseModelImplCopyWith<_$UserResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
