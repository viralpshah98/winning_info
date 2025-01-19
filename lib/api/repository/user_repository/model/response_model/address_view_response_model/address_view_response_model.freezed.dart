// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_view_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressViewResponseModel _$AddressViewResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AddressViewResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AddressViewResponseModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'active')
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'countryCode')
  KeyValueResponseModel? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile')
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthday')
  String? get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: 'marriageAnniversaryDate')
  String? get marriageAnniversaryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressView')
  KeyValueResponseModel? get addressView => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortFormOfName')
  String? get shortFormOfName => throw _privateConstructorUsedError;

  /// Serializes this AddressViewResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressViewResponseModelCopyWith<AddressViewResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressViewResponseModelCopyWith<$Res> {
  factory $AddressViewResponseModelCopyWith(AddressViewResponseModel value,
          $Res Function(AddressViewResponseModel) then) =
      _$AddressViewResponseModelCopyWithImpl<$Res, AddressViewResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'active') bool? active,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'countryCode') KeyValueResponseModel? countryCode,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'birthday') String? birthday,
      @JsonKey(name: 'marriageAnniversaryDate') String? marriageAnniversaryDate,
      @JsonKey(name: 'addressView') KeyValueResponseModel? addressView,
      @JsonKey(name: 'shortFormOfName') String? shortFormOfName});

  $KeyValueResponseModelCopyWith<$Res>? get countryCode;
  $KeyValueResponseModelCopyWith<$Res>? get addressView;
}

/// @nodoc
class _$AddressViewResponseModelCopyWithImpl<$Res,
        $Val extends AddressViewResponseModel>
    implements $AddressViewResponseModelCopyWith<$Res> {
  _$AddressViewResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? countryCode = freezed,
    Object? mobile = freezed,
    Object? birthday = freezed,
    Object? marriageAnniversaryDate = freezed,
    Object? addressView = freezed,
    Object? shortFormOfName = freezed,
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
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      marriageAnniversaryDate: freezed == marriageAnniversaryDate
          ? _value.marriageAnniversaryDate
          : marriageAnniversaryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      addressView: freezed == addressView
          ? _value.addressView
          : addressView // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      shortFormOfName: freezed == shortFormOfName
          ? _value.shortFormOfName
          : shortFormOfName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AddressViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyValueResponseModelCopyWith<$Res>? get countryCode {
    if (_value.countryCode == null) {
      return null;
    }

    return $KeyValueResponseModelCopyWith<$Res>(_value.countryCode!, (value) {
      return _then(_value.copyWith(countryCode: value) as $Val);
    });
  }

  /// Create a copy of AddressViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyValueResponseModelCopyWith<$Res>? get addressView {
    if (_value.addressView == null) {
      return null;
    }

    return $KeyValueResponseModelCopyWith<$Res>(_value.addressView!, (value) {
      return _then(_value.copyWith(addressView: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressViewResponseModelImplCopyWith<$Res>
    implements $AddressViewResponseModelCopyWith<$Res> {
  factory _$$AddressViewResponseModelImplCopyWith(
          _$AddressViewResponseModelImpl value,
          $Res Function(_$AddressViewResponseModelImpl) then) =
      __$$AddressViewResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'active') bool? active,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'countryCode') KeyValueResponseModel? countryCode,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'birthday') String? birthday,
      @JsonKey(name: 'marriageAnniversaryDate') String? marriageAnniversaryDate,
      @JsonKey(name: 'addressView') KeyValueResponseModel? addressView,
      @JsonKey(name: 'shortFormOfName') String? shortFormOfName});

  @override
  $KeyValueResponseModelCopyWith<$Res>? get countryCode;
  @override
  $KeyValueResponseModelCopyWith<$Res>? get addressView;
}

/// @nodoc
class __$$AddressViewResponseModelImplCopyWithImpl<$Res>
    extends _$AddressViewResponseModelCopyWithImpl<$Res,
        _$AddressViewResponseModelImpl>
    implements _$$AddressViewResponseModelImplCopyWith<$Res> {
  __$$AddressViewResponseModelImplCopyWithImpl(
      _$AddressViewResponseModelImpl _value,
      $Res Function(_$AddressViewResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? countryCode = freezed,
    Object? mobile = freezed,
    Object? birthday = freezed,
    Object? marriageAnniversaryDate = freezed,
    Object? addressView = freezed,
    Object? shortFormOfName = freezed,
  }) {
    return _then(_$AddressViewResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      marriageAnniversaryDate: freezed == marriageAnniversaryDate
          ? _value.marriageAnniversaryDate
          : marriageAnniversaryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      addressView: freezed == addressView
          ? _value.addressView
          : addressView // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      shortFormOfName: freezed == shortFormOfName
          ? _value.shortFormOfName
          : shortFormOfName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AddressViewResponseModelImpl implements _AddressViewResponseModel {
  const _$AddressViewResponseModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'active') this.active,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'countryCode') this.countryCode,
      @JsonKey(name: 'mobile') this.mobile,
      @JsonKey(name: 'birthday') this.birthday,
      @JsonKey(name: 'marriageAnniversaryDate') this.marriageAnniversaryDate,
      @JsonKey(name: 'addressView') this.addressView,
      @JsonKey(name: 'shortFormOfName') this.shortFormOfName});

  factory _$AddressViewResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressViewResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'active')
  final bool? active;
  @override
  @JsonKey(name: 'firstName')
  final String? firstName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'countryCode')
  final KeyValueResponseModel? countryCode;
  @override
  @JsonKey(name: 'mobile')
  final String? mobile;
  @override
  @JsonKey(name: 'birthday')
  final String? birthday;
  @override
  @JsonKey(name: 'marriageAnniversaryDate')
  final String? marriageAnniversaryDate;
  @override
  @JsonKey(name: 'addressView')
  final KeyValueResponseModel? addressView;
  @override
  @JsonKey(name: 'shortFormOfName')
  final String? shortFormOfName;

  @override
  String toString() {
    return 'AddressViewResponseModel(id: $id, active: $active, firstName: $firstName, lastName: $lastName, email: $email, countryCode: $countryCode, mobile: $mobile, birthday: $birthday, marriageAnniversaryDate: $marriageAnniversaryDate, addressView: $addressView, shortFormOfName: $shortFormOfName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressViewResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(
                    other.marriageAnniversaryDate, marriageAnniversaryDate) ||
                other.marriageAnniversaryDate == marriageAnniversaryDate) &&
            (identical(other.addressView, addressView) ||
                other.addressView == addressView) &&
            (identical(other.shortFormOfName, shortFormOfName) ||
                other.shortFormOfName == shortFormOfName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      active,
      firstName,
      lastName,
      email,
      countryCode,
      mobile,
      birthday,
      marriageAnniversaryDate,
      addressView,
      shortFormOfName);

  /// Create a copy of AddressViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressViewResponseModelImplCopyWith<_$AddressViewResponseModelImpl>
      get copyWith => __$$AddressViewResponseModelImplCopyWithImpl<
          _$AddressViewResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressViewResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AddressViewResponseModel implements AddressViewResponseModel {
  const factory _AddressViewResponseModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'active') final bool? active,
      @JsonKey(name: 'firstName') final String? firstName,
      @JsonKey(name: 'lastName') final String? lastName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'countryCode') final KeyValueResponseModel? countryCode,
      @JsonKey(name: 'mobile') final String? mobile,
      @JsonKey(name: 'birthday') final String? birthday,
      @JsonKey(name: 'marriageAnniversaryDate')
      final String? marriageAnniversaryDate,
      @JsonKey(name: 'addressView') final KeyValueResponseModel? addressView,
      @JsonKey(name: 'shortFormOfName')
      final String? shortFormOfName}) = _$AddressViewResponseModelImpl;

  factory _AddressViewResponseModel.fromJson(Map<String, dynamic> json) =
      _$AddressViewResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'active')
  bool? get active;
  @override
  @JsonKey(name: 'firstName')
  String? get firstName;
  @override
  @JsonKey(name: 'lastName')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'countryCode')
  KeyValueResponseModel? get countryCode;
  @override
  @JsonKey(name: 'mobile')
  String? get mobile;
  @override
  @JsonKey(name: 'birthday')
  String? get birthday;
  @override
  @JsonKey(name: 'marriageAnniversaryDate')
  String? get marriageAnniversaryDate;
  @override
  @JsonKey(name: 'addressView')
  KeyValueResponseModel? get addressView;
  @override
  @JsonKey(name: 'shortFormOfName')
  String? get shortFormOfName;

  /// Create a copy of AddressViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressViewResponseModelImplCopyWith<_$AddressViewResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
