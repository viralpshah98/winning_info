// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_volunteers_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddVolunteersRequestModel _$AddVolunteersRequestModelFromJson(
    Map<String, dynamic> json) {
  return _AddVolunteersRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AddVolunteersRequestModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middleName')
  String? get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'countryCode')
  KeyValueResponseModel? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile')
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  KeyValueResponseModel? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthDate')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'marriageAnniversaryDate')
  String? get marriageAnniversaryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'epicNumber')
  String? get epicNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressView')
  AddressRequestModel? get addressView => throw _privateConstructorUsedError;

  /// Serializes this AddVolunteersRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddVolunteersRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddVolunteersRequestModelCopyWith<AddVolunteersRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddVolunteersRequestModelCopyWith<$Res> {
  factory $AddVolunteersRequestModelCopyWith(AddVolunteersRequestModel value,
          $Res Function(AddVolunteersRequestModel) then) =
      _$AddVolunteersRequestModelCopyWithImpl<$Res, AddVolunteersRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'middleName') String? middleName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'countryCode') KeyValueResponseModel? countryCode,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'gender') KeyValueResponseModel? gender,
      @JsonKey(name: 'birthDate') String? birthDate,
      @JsonKey(name: 'marriageAnniversaryDate') String? marriageAnniversaryDate,
      @JsonKey(name: 'epicNumber') String? epicNumber,
      @JsonKey(name: 'addressView') AddressRequestModel? addressView});

  $KeyValueResponseModelCopyWith<$Res>? get countryCode;
  $KeyValueResponseModelCopyWith<$Res>? get gender;
  $AddressRequestModelCopyWith<$Res>? get addressView;
}

/// @nodoc
class _$AddVolunteersRequestModelCopyWithImpl<$Res,
        $Val extends AddVolunteersRequestModel>
    implements $AddVolunteersRequestModelCopyWith<$Res> {
  _$AddVolunteersRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddVolunteersRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? countryCode = freezed,
    Object? mobile = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? marriageAnniversaryDate = freezed,
    Object? epicNumber = freezed,
    Object? addressView = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      marriageAnniversaryDate: freezed == marriageAnniversaryDate
          ? _value.marriageAnniversaryDate
          : marriageAnniversaryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      epicNumber: freezed == epicNumber
          ? _value.epicNumber
          : epicNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      addressView: freezed == addressView
          ? _value.addressView
          : addressView // ignore: cast_nullable_to_non_nullable
              as AddressRequestModel?,
    ) as $Val);
  }

  /// Create a copy of AddVolunteersRequestModel
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

  /// Create a copy of AddVolunteersRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyValueResponseModelCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $KeyValueResponseModelCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  /// Create a copy of AddVolunteersRequestModel
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
abstract class _$$AddVolunteersRequestModelImplCopyWith<$Res>
    implements $AddVolunteersRequestModelCopyWith<$Res> {
  factory _$$AddVolunteersRequestModelImplCopyWith(
          _$AddVolunteersRequestModelImpl value,
          $Res Function(_$AddVolunteersRequestModelImpl) then) =
      __$$AddVolunteersRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'middleName') String? middleName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'countryCode') KeyValueResponseModel? countryCode,
      @JsonKey(name: 'mobile') String? mobile,
      @JsonKey(name: 'gender') KeyValueResponseModel? gender,
      @JsonKey(name: 'birthDate') String? birthDate,
      @JsonKey(name: 'marriageAnniversaryDate') String? marriageAnniversaryDate,
      @JsonKey(name: 'epicNumber') String? epicNumber,
      @JsonKey(name: 'addressView') AddressRequestModel? addressView});

  @override
  $KeyValueResponseModelCopyWith<$Res>? get countryCode;
  @override
  $KeyValueResponseModelCopyWith<$Res>? get gender;
  @override
  $AddressRequestModelCopyWith<$Res>? get addressView;
}

/// @nodoc
class __$$AddVolunteersRequestModelImplCopyWithImpl<$Res>
    extends _$AddVolunteersRequestModelCopyWithImpl<$Res,
        _$AddVolunteersRequestModelImpl>
    implements _$$AddVolunteersRequestModelImplCopyWith<$Res> {
  __$$AddVolunteersRequestModelImplCopyWithImpl(
      _$AddVolunteersRequestModelImpl _value,
      $Res Function(_$AddVolunteersRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddVolunteersRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? countryCode = freezed,
    Object? mobile = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? marriageAnniversaryDate = freezed,
    Object? epicNumber = freezed,
    Object? addressView = freezed,
  }) {
    return _then(_$AddVolunteersRequestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      marriageAnniversaryDate: freezed == marriageAnniversaryDate
          ? _value.marriageAnniversaryDate
          : marriageAnniversaryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      epicNumber: freezed == epicNumber
          ? _value.epicNumber
          : epicNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      addressView: freezed == addressView
          ? _value.addressView
          : addressView // ignore: cast_nullable_to_non_nullable
              as AddressRequestModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AddVolunteersRequestModelImpl implements _AddVolunteersRequestModel {
  const _$AddVolunteersRequestModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'middleName') this.middleName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'countryCode') this.countryCode,
      @JsonKey(name: 'mobile') this.mobile,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'birthDate') this.birthDate,
      @JsonKey(name: 'marriageAnniversaryDate') this.marriageAnniversaryDate,
      @JsonKey(name: 'epicNumber') this.epicNumber,
      @JsonKey(name: 'addressView') this.addressView});

  factory _$AddVolunteersRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddVolunteersRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
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
  @JsonKey(name: 'countryCode')
  final KeyValueResponseModel? countryCode;
  @override
  @JsonKey(name: 'mobile')
  final String? mobile;
  @override
  @JsonKey(name: 'gender')
  final KeyValueResponseModel? gender;
  @override
  @JsonKey(name: 'birthDate')
  final String? birthDate;
  @override
  @JsonKey(name: 'marriageAnniversaryDate')
  final String? marriageAnniversaryDate;
  @override
  @JsonKey(name: 'epicNumber')
  final String? epicNumber;
  @override
  @JsonKey(name: 'addressView')
  final AddressRequestModel? addressView;

  @override
  String toString() {
    return 'AddVolunteersRequestModel(id: $id, firstName: $firstName, middleName: $middleName, lastName: $lastName, email: $email, countryCode: $countryCode, mobile: $mobile, gender: $gender, birthDate: $birthDate, marriageAnniversaryDate: $marriageAnniversaryDate, epicNumber: $epicNumber, addressView: $addressView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddVolunteersRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(
                    other.marriageAnniversaryDate, marriageAnniversaryDate) ||
                other.marriageAnniversaryDate == marriageAnniversaryDate) &&
            (identical(other.epicNumber, epicNumber) ||
                other.epicNumber == epicNumber) &&
            (identical(other.addressView, addressView) ||
                other.addressView == addressView));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      middleName,
      lastName,
      email,
      countryCode,
      mobile,
      gender,
      birthDate,
      marriageAnniversaryDate,
      epicNumber,
      addressView);

  /// Create a copy of AddVolunteersRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddVolunteersRequestModelImplCopyWith<_$AddVolunteersRequestModelImpl>
      get copyWith => __$$AddVolunteersRequestModelImplCopyWithImpl<
          _$AddVolunteersRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddVolunteersRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AddVolunteersRequestModel implements AddVolunteersRequestModel {
  const factory _AddVolunteersRequestModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'firstName') final String? firstName,
      @JsonKey(name: 'middleName') final String? middleName,
      @JsonKey(name: 'lastName') final String? lastName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'countryCode') final KeyValueResponseModel? countryCode,
      @JsonKey(name: 'mobile') final String? mobile,
      @JsonKey(name: 'gender') final KeyValueResponseModel? gender,
      @JsonKey(name: 'birthDate') final String? birthDate,
      @JsonKey(name: 'marriageAnniversaryDate')
      final String? marriageAnniversaryDate,
      @JsonKey(name: 'epicNumber') final String? epicNumber,
      @JsonKey(name: 'addressView')
      final AddressRequestModel?
          addressView}) = _$AddVolunteersRequestModelImpl;

  factory _AddVolunteersRequestModel.fromJson(Map<String, dynamic> json) =
      _$AddVolunteersRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
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
  @JsonKey(name: 'countryCode')
  KeyValueResponseModel? get countryCode;
  @override
  @JsonKey(name: 'mobile')
  String? get mobile;
  @override
  @JsonKey(name: 'gender')
  KeyValueResponseModel? get gender;
  @override
  @JsonKey(name: 'birthDate')
  String? get birthDate;
  @override
  @JsonKey(name: 'marriageAnniversaryDate')
  String? get marriageAnniversaryDate;
  @override
  @JsonKey(name: 'epicNumber')
  String? get epicNumber;
  @override
  @JsonKey(name: 'addressView')
  AddressRequestModel? get addressView;

  /// Create a copy of AddVolunteersRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddVolunteersRequestModelImplCopyWith<_$AddVolunteersRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
