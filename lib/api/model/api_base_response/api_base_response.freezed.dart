// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiBaseResponse _$ApiBaseResponseFromJson(Map<String, dynamic> json) {
  return _ApiBaseResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiBaseResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'accessToken')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshToken')
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceToken')
  String? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasError')
  bool? get hasError => throw _privateConstructorUsedError;
  @JsonKey(name: 'view')
  dynamic get view => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<dynamic>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'records')
  int? get records => throw _privateConstructorUsedError;

  /// Serializes this ApiBaseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiBaseResponseCopyWith<ApiBaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiBaseResponseCopyWith<$Res> {
  factory $ApiBaseResponseCopyWith(
          ApiBaseResponse value, $Res Function(ApiBaseResponse) then) =
      _$ApiBaseResponseCopyWithImpl<$Res, ApiBaseResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'accessToken') String? accessToken,
      @JsonKey(name: 'refreshToken') String? refreshToken,
      @JsonKey(name: 'deviceToken') String? deviceToken,
      @JsonKey(name: 'hasError') bool? hasError,
      @JsonKey(name: 'view') dynamic view,
      @JsonKey(name: 'list') List<dynamic>? list,
      @JsonKey(name: 'records') int? records});
}

/// @nodoc
class _$ApiBaseResponseCopyWithImpl<$Res, $Val extends ApiBaseResponse>
    implements $ApiBaseResponseCopyWith<$Res> {
  _$ApiBaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? deviceToken = freezed,
    Object? hasError = freezed,
    Object? view = freezed,
    Object? list = freezed,
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      hasError: freezed == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as dynamic,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiBaseResponseImplCopyWith<$Res>
    implements $ApiBaseResponseCopyWith<$Res> {
  factory _$$ApiBaseResponseImplCopyWith(_$ApiBaseResponseImpl value,
          $Res Function(_$ApiBaseResponseImpl) then) =
      __$$ApiBaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'accessToken') String? accessToken,
      @JsonKey(name: 'refreshToken') String? refreshToken,
      @JsonKey(name: 'deviceToken') String? deviceToken,
      @JsonKey(name: 'hasError') bool? hasError,
      @JsonKey(name: 'view') dynamic view,
      @JsonKey(name: 'list') List<dynamic>? list,
      @JsonKey(name: 'records') int? records});
}

/// @nodoc
class __$$ApiBaseResponseImplCopyWithImpl<$Res>
    extends _$ApiBaseResponseCopyWithImpl<$Res, _$ApiBaseResponseImpl>
    implements _$$ApiBaseResponseImplCopyWith<$Res> {
  __$$ApiBaseResponseImplCopyWithImpl(
      _$ApiBaseResponseImpl _value, $Res Function(_$ApiBaseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? deviceToken = freezed,
    Object? hasError = freezed,
    Object? view = freezed,
    Object? list = freezed,
    Object? records = freezed,
  }) {
    return _then(_$ApiBaseResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      hasError: freezed == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as dynamic,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiBaseResponseImpl implements _ApiBaseResponse {
  const _$ApiBaseResponseImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'accessToken') this.accessToken,
      @JsonKey(name: 'refreshToken') this.refreshToken,
      @JsonKey(name: 'deviceToken') this.deviceToken,
      @JsonKey(name: 'hasError') this.hasError,
      @JsonKey(name: 'view') this.view,
      @JsonKey(name: 'list') final List<dynamic>? list,
      @JsonKey(name: 'records') this.records})
      : _list = list;

  factory _$ApiBaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiBaseResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'accessToken')
  final String? accessToken;
  @override
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @override
  @JsonKey(name: 'deviceToken')
  final String? deviceToken;
  @override
  @JsonKey(name: 'hasError')
  final bool? hasError;
  @override
  @JsonKey(name: 'view')
  final dynamic view;
  final List<dynamic>? _list;
  @override
  @JsonKey(name: 'list')
  List<dynamic>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'records')
  final int? records;

  @override
  String toString() {
    return 'ApiBaseResponse(code: $code, message: $message, accessToken: $accessToken, refreshToken: $refreshToken, deviceToken: $deviceToken, hasError: $hasError, view: $view, list: $list, records: $records)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiBaseResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality().equals(other.view, view) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.records, records) || other.records == records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      message,
      accessToken,
      refreshToken,
      deviceToken,
      hasError,
      const DeepCollectionEquality().hash(view),
      const DeepCollectionEquality().hash(_list),
      records);

  /// Create a copy of ApiBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiBaseResponseImplCopyWith<_$ApiBaseResponseImpl> get copyWith =>
      __$$ApiBaseResponseImplCopyWithImpl<_$ApiBaseResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiBaseResponseImplToJson(
      this,
    );
  }
}

abstract class _ApiBaseResponse implements ApiBaseResponse {
  const factory _ApiBaseResponse(
      {@JsonKey(name: 'code') final int? code,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'accessToken') final String? accessToken,
      @JsonKey(name: 'refreshToken') final String? refreshToken,
      @JsonKey(name: 'deviceToken') final String? deviceToken,
      @JsonKey(name: 'hasError') final bool? hasError,
      @JsonKey(name: 'view') final dynamic view,
      @JsonKey(name: 'list') final List<dynamic>? list,
      @JsonKey(name: 'records') final int? records}) = _$ApiBaseResponseImpl;

  factory _ApiBaseResponse.fromJson(Map<String, dynamic> json) =
      _$ApiBaseResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'accessToken')
  String? get accessToken;
  @override
  @JsonKey(name: 'refreshToken')
  String? get refreshToken;
  @override
  @JsonKey(name: 'deviceToken')
  String? get deviceToken;
  @override
  @JsonKey(name: 'hasError')
  bool? get hasError;
  @override
  @JsonKey(name: 'view')
  dynamic get view;
  @override
  @JsonKey(name: 'list')
  List<dynamic>? get list;
  @override
  @JsonKey(name: 'records')
  int? get records;

  /// Create a copy of ApiBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiBaseResponseImplCopyWith<_$ApiBaseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
