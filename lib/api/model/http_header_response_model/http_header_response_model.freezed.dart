// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_header_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HTTPHeaderResponseModel _$HTTPHeaderResponseModelFromJson(
    Map<String, dynamic> json) {
  return _HTTPHeaderResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HTTPHeaderResponseModel {
  @JsonKey(name: kAuthorizationKey)
  String? get authorizationToken => throw _privateConstructorUsedError;
  @JsonKey(name: kOrigin)
  String get origin => throw _privateConstructorUsedError;
  @JsonKey(name: kApplicationType)
  String get contentType => throw _privateConstructorUsedError;

  /// Serializes this HTTPHeaderResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HTTPHeaderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HTTPHeaderResponseModelCopyWith<HTTPHeaderResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HTTPHeaderResponseModelCopyWith<$Res> {
  factory $HTTPHeaderResponseModelCopyWith(HTTPHeaderResponseModel value,
          $Res Function(HTTPHeaderResponseModel) then) =
      _$HTTPHeaderResponseModelCopyWithImpl<$Res, HTTPHeaderResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: kAuthorizationKey) String? authorizationToken,
      @JsonKey(name: kOrigin) String origin,
      @JsonKey(name: kApplicationType) String contentType});
}

/// @nodoc
class _$HTTPHeaderResponseModelCopyWithImpl<$Res,
        $Val extends HTTPHeaderResponseModel>
    implements $HTTPHeaderResponseModelCopyWith<$Res> {
  _$HTTPHeaderResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HTTPHeaderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationToken = freezed,
    Object? origin = null,
    Object? contentType = null,
  }) {
    return _then(_value.copyWith(
      authorizationToken: freezed == authorizationToken
          ? _value.authorizationToken
          : authorizationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HTTPHeaderResponseModelImplCopyWith<$Res>
    implements $HTTPHeaderResponseModelCopyWith<$Res> {
  factory _$$HTTPHeaderResponseModelImplCopyWith(
          _$HTTPHeaderResponseModelImpl value,
          $Res Function(_$HTTPHeaderResponseModelImpl) then) =
      __$$HTTPHeaderResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: kAuthorizationKey) String? authorizationToken,
      @JsonKey(name: kOrigin) String origin,
      @JsonKey(name: kApplicationType) String contentType});
}

/// @nodoc
class __$$HTTPHeaderResponseModelImplCopyWithImpl<$Res>
    extends _$HTTPHeaderResponseModelCopyWithImpl<$Res,
        _$HTTPHeaderResponseModelImpl>
    implements _$$HTTPHeaderResponseModelImplCopyWith<$Res> {
  __$$HTTPHeaderResponseModelImplCopyWithImpl(
      _$HTTPHeaderResponseModelImpl _value,
      $Res Function(_$HTTPHeaderResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HTTPHeaderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationToken = freezed,
    Object? origin = null,
    Object? contentType = null,
  }) {
    return _then(_$HTTPHeaderResponseModelImpl(
      authorizationToken: freezed == authorizationToken
          ? _value.authorizationToken
          : authorizationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HTTPHeaderResponseModelImpl implements _HTTPHeaderResponseModel {
  const _$HTTPHeaderResponseModelImpl(
      {@JsonKey(name: kAuthorizationKey) this.authorizationToken,
      @JsonKey(name: kOrigin) this.origin = 'app.winninginfo.in',
      @JsonKey(name: kApplicationType) this.contentType = 'application/json'});

  factory _$HTTPHeaderResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HTTPHeaderResponseModelImplFromJson(json);

  @override
  @JsonKey(name: kAuthorizationKey)
  final String? authorizationToken;
  @override
  @JsonKey(name: kOrigin)
  final String origin;
  @override
  @JsonKey(name: kApplicationType)
  final String contentType;

  @override
  String toString() {
    return 'HTTPHeaderResponseModel(authorizationToken: $authorizationToken, origin: $origin, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HTTPHeaderResponseModelImpl &&
            (identical(other.authorizationToken, authorizationToken) ||
                other.authorizationToken == authorizationToken) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, authorizationToken, origin, contentType);

  /// Create a copy of HTTPHeaderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HTTPHeaderResponseModelImplCopyWith<_$HTTPHeaderResponseModelImpl>
      get copyWith => __$$HTTPHeaderResponseModelImplCopyWithImpl<
          _$HTTPHeaderResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HTTPHeaderResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HTTPHeaderResponseModel implements HTTPHeaderResponseModel {
  const factory _HTTPHeaderResponseModel(
          {@JsonKey(name: kAuthorizationKey) final String? authorizationToken,
          @JsonKey(name: kOrigin) final String origin,
          @JsonKey(name: kApplicationType) final String contentType}) =
      _$HTTPHeaderResponseModelImpl;

  factory _HTTPHeaderResponseModel.fromJson(Map<String, dynamic> json) =
      _$HTTPHeaderResponseModelImpl.fromJson;

  @override
  @JsonKey(name: kAuthorizationKey)
  String? get authorizationToken;
  @override
  @JsonKey(name: kOrigin)
  String get origin;
  @override
  @JsonKey(name: kApplicationType)
  String get contentType;

  /// Create a copy of HTTPHeaderResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HTTPHeaderResponseModelImplCopyWith<_$HTTPHeaderResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
