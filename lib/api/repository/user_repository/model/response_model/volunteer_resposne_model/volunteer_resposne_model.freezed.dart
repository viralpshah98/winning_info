// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'volunteer_resposne_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VolunteerResponseModel _$VolunteerResponseModelFromJson(
    Map<String, dynamic> json) {
  return _VolunteerResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VolunteerResponseModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'active')
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middleName')
  String? get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'epicNumber')
  String? get epicNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'countryCode')
  KeyValueResponseModel? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile')
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthDate')
  String? get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: 'marriageAnniversaryDate')
  String? get marriageAnniversaryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressView')
  AddressRequestModel? get addressView => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortFormOfName')
  String? get shortFormOfName => throw _privateConstructorUsedError;

  /// Serializes this VolunteerResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VolunteerResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VolunteerResponseModelCopyWith<VolunteerResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolunteerResponseModelCopyWith<$Res> {
  factory $VolunteerResponseModelCopyWith(VolunteerResponseModel value,
          $Res Function(VolunteerResponseModel) then) =
      _$VolunteerResponseModelCopyWithImpl<$Res, VolunteerResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'active') bool? active,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'middleName') String? middleName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'epicNumber') String? epicNumber,
      @JsonKey(name: 'countryCode') KeyValueResponseModel? countryCode,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'birthDate') String? birthday,
      @JsonKey(name: 'marriageAnniversaryDate') String? marriageAnniversaryDate,
      @JsonKey(name: 'addressView') AddressRequestModel? addressView,
      @JsonKey(name: 'shortFormOfName') String? shortFormOfName});

  $KeyValueResponseModelCopyWith<$Res>? get countryCode;
  $AddressRequestModelCopyWith<$Res>? get addressView;
}

/// @nodoc
class _$VolunteerResponseModelCopyWithImpl<$Res,
        $Val extends VolunteerResponseModel>
    implements $VolunteerResponseModelCopyWith<$Res> {
  _$VolunteerResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VolunteerResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? epicNumber = freezed,
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
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      epicNumber: freezed == epicNumber
          ? _value.epicNumber
          : epicNumber // ignore: cast_nullable_to_non_nullable
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
              as AddressRequestModel?,
      shortFormOfName: freezed == shortFormOfName
          ? _value.shortFormOfName
          : shortFormOfName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of VolunteerResponseModel
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

  /// Create a copy of VolunteerResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressRequestModelCopyWith<$Res>? get addressView {
    if (_value.addressView == null) {
      return null;
    }

    return $AddressRequestModelCopyWith<$Res>(_value.addressView!, (value) {
      return _then(_value.copyWith(addressView: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VolunteerResponseModelImplCopyWith<$Res>
    implements $VolunteerResponseModelCopyWith<$Res> {
  factory _$$VolunteerResponseModelImplCopyWith(
          _$VolunteerResponseModelImpl value,
          $Res Function(_$VolunteerResponseModelImpl) then) =
      __$$VolunteerResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'active') bool? active,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'middleName') String? middleName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'epicNumber') String? epicNumber,
      @JsonKey(name: 'countryCode') KeyValueResponseModel? countryCode,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'birthDate') String? birthday,
      @JsonKey(name: 'marriageAnniversaryDate') String? marriageAnniversaryDate,
      @JsonKey(name: 'addressView') AddressRequestModel? addressView,
      @JsonKey(name: 'shortFormOfName') String? shortFormOfName});

  @override
  $KeyValueResponseModelCopyWith<$Res>? get countryCode;
  @override
  $AddressRequestModelCopyWith<$Res>? get addressView;
}

/// @nodoc
class __$$VolunteerResponseModelImplCopyWithImpl<$Res>
    extends _$VolunteerResponseModelCopyWithImpl<$Res,
        _$VolunteerResponseModelImpl>
    implements _$$VolunteerResponseModelImplCopyWith<$Res> {
  __$$VolunteerResponseModelImplCopyWithImpl(
      _$VolunteerResponseModelImpl _value,
      $Res Function(_$VolunteerResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VolunteerResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? epicNumber = freezed,
    Object? countryCode = freezed,
    Object? mobile = freezed,
    Object? birthday = freezed,
    Object? marriageAnniversaryDate = freezed,
    Object? addressView = freezed,
    Object? shortFormOfName = freezed,
  }) {
    return _then(_$VolunteerResponseModelImpl(
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
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      epicNumber: freezed == epicNumber
          ? _value.epicNumber
          : epicNumber // ignore: cast_nullable_to_non_nullable
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
              as AddressRequestModel?,
      shortFormOfName: freezed == shortFormOfName
          ? _value.shortFormOfName
          : shortFormOfName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VolunteerResponseModelImpl implements _VolunteerResponseModel {
  const _$VolunteerResponseModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'active') this.active,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'middleName') this.middleName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'epicNumber') this.epicNumber,
      @JsonKey(name: 'countryCode') this.countryCode,
      @JsonKey(name: 'mobile') this.mobile,
      @JsonKey(name: 'birthDate') this.birthday,
      @JsonKey(name: 'marriageAnniversaryDate') this.marriageAnniversaryDate,
      @JsonKey(name: 'addressView') this.addressView,
      @JsonKey(name: 'shortFormOfName') this.shortFormOfName});

  factory _$VolunteerResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolunteerResponseModelImplFromJson(json);

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
  @JsonKey(name: 'middleName')
  final String? middleName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'epicNumber')
  final String? epicNumber;
  @override
  @JsonKey(name: 'countryCode')
  final KeyValueResponseModel? countryCode;
  @override
  @JsonKey(name: 'mobile')
  final String? mobile;
  @override
  @JsonKey(name: 'birthDate')
  final String? birthday;
  @override
  @JsonKey(name: 'marriageAnniversaryDate')
  final String? marriageAnniversaryDate;
  @override
  @JsonKey(name: 'addressView')
  final AddressRequestModel? addressView;
  @override
  @JsonKey(name: 'shortFormOfName')
  final String? shortFormOfName;

  @override
  String toString() {
    return 'VolunteerResponseModel(id: $id, active: $active, firstName: $firstName, middleName: $middleName, lastName: $lastName, email: $email, epicNumber: $epicNumber, countryCode: $countryCode, mobile: $mobile, birthday: $birthday, marriageAnniversaryDate: $marriageAnniversaryDate, addressView: $addressView, shortFormOfName: $shortFormOfName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolunteerResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.epicNumber, epicNumber) ||
                other.epicNumber == epicNumber) &&
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
      middleName,
      lastName,
      email,
      epicNumber,
      countryCode,
      mobile,
      birthday,
      marriageAnniversaryDate,
      addressView,
      shortFormOfName);

  /// Create a copy of VolunteerResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VolunteerResponseModelImplCopyWith<_$VolunteerResponseModelImpl>
      get copyWith => __$$VolunteerResponseModelImplCopyWithImpl<
          _$VolunteerResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolunteerResponseModelImplToJson(
      this,
    );
  }
}

abstract class _VolunteerResponseModel implements VolunteerResponseModel {
  const factory _VolunteerResponseModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'active') final bool? active,
      @JsonKey(name: 'firstName') final String? firstName,
      @JsonKey(name: 'middleName') final String? middleName,
      @JsonKey(name: 'lastName') final String? lastName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'epicNumber') final String? epicNumber,
      @JsonKey(name: 'countryCode') final KeyValueResponseModel? countryCode,
      @JsonKey(name: 'mobile') final String? mobile,
      @JsonKey(name: 'birthDate') final String? birthday,
      @JsonKey(name: 'marriageAnniversaryDate')
      final String? marriageAnniversaryDate,
      @JsonKey(name: 'addressView') final AddressRequestModel? addressView,
      @JsonKey(name: 'shortFormOfName')
      final String? shortFormOfName}) = _$VolunteerResponseModelImpl;

  factory _VolunteerResponseModel.fromJson(Map<String, dynamic> json) =
      _$VolunteerResponseModelImpl.fromJson;

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
  @JsonKey(name: 'middleName')
  String? get middleName;
  @override
  @JsonKey(name: 'lastName')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'epicNumber')
  String? get epicNumber;
  @override
  @JsonKey(name: 'countryCode')
  KeyValueResponseModel? get countryCode;
  @override
  @JsonKey(name: 'mobile')
  String? get mobile;
  @override
  @JsonKey(name: 'birthDate')
  String? get birthday;
  @override
  @JsonKey(name: 'marriageAnniversaryDate')
  String? get marriageAnniversaryDate;
  @override
  @JsonKey(name: 'addressView')
  AddressRequestModel? get addressView;
  @override
  @JsonKey(name: 'shortFormOfName')
  String? get shortFormOfName;

  /// Create a copy of VolunteerResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VolunteerResponseModelImplCopyWith<_$VolunteerResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
