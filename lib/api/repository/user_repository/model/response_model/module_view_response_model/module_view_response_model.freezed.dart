// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_view_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModuleViewResponseModel _$ModuleViewResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ModuleViewResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ModuleViewResponseModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'typeId')
  KeyValueResponseModel? get typeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rightsViews')
  List<ModuleViewResponseModel>? get rightsViews =>
      throw _privateConstructorUsedError;

  /// Serializes this ModuleViewResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModuleViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModuleViewResponseModelCopyWith<ModuleViewResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleViewResponseModelCopyWith<$Res> {
  factory $ModuleViewResponseModelCopyWith(ModuleViewResponseModel value,
          $Res Function(ModuleViewResponseModel) then) =
      _$ModuleViewResponseModelCopyWithImpl<$Res, ModuleViewResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'typeId') KeyValueResponseModel? typeId,
      @JsonKey(name: 'rightsViews')
      List<ModuleViewResponseModel>? rightsViews});

  $KeyValueResponseModelCopyWith<$Res>? get typeId;
}

/// @nodoc
class _$ModuleViewResponseModelCopyWithImpl<$Res,
        $Val extends ModuleViewResponseModel>
    implements $ModuleViewResponseModelCopyWith<$Res> {
  _$ModuleViewResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? typeId = freezed,
    Object? rightsViews = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      rightsViews: freezed == rightsViews
          ? _value.rightsViews
          : rightsViews // ignore: cast_nullable_to_non_nullable
              as List<ModuleViewResponseModel>?,
    ) as $Val);
  }

  /// Create a copy of ModuleViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyValueResponseModelCopyWith<$Res>? get typeId {
    if (_value.typeId == null) {
      return null;
    }

    return $KeyValueResponseModelCopyWith<$Res>(_value.typeId!, (value) {
      return _then(_value.copyWith(typeId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModuleViewResponseModelImplCopyWith<$Res>
    implements $ModuleViewResponseModelCopyWith<$Res> {
  factory _$$ModuleViewResponseModelImplCopyWith(
          _$ModuleViewResponseModelImpl value,
          $Res Function(_$ModuleViewResponseModelImpl) then) =
      __$$ModuleViewResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'typeId') KeyValueResponseModel? typeId,
      @JsonKey(name: 'rightsViews')
      List<ModuleViewResponseModel>? rightsViews});

  @override
  $KeyValueResponseModelCopyWith<$Res>? get typeId;
}

/// @nodoc
class __$$ModuleViewResponseModelImplCopyWithImpl<$Res>
    extends _$ModuleViewResponseModelCopyWithImpl<$Res,
        _$ModuleViewResponseModelImpl>
    implements _$$ModuleViewResponseModelImplCopyWith<$Res> {
  __$$ModuleViewResponseModelImplCopyWithImpl(
      _$ModuleViewResponseModelImpl _value,
      $Res Function(_$ModuleViewResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? typeId = freezed,
    Object? rightsViews = freezed,
  }) {
    return _then(_$ModuleViewResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as KeyValueResponseModel?,
      rightsViews: freezed == rightsViews
          ? _value._rightsViews
          : rightsViews // ignore: cast_nullable_to_non_nullable
              as List<ModuleViewResponseModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ModuleViewResponseModelImpl implements _ModuleViewResponseModel {
  const _$ModuleViewResponseModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'typeId') this.typeId,
      @JsonKey(name: 'rightsViews')
      final List<ModuleViewResponseModel>? rightsViews})
      : _rightsViews = rightsViews;

  factory _$ModuleViewResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModuleViewResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'typeId')
  final KeyValueResponseModel? typeId;
  final List<ModuleViewResponseModel>? _rightsViews;
  @override
  @JsonKey(name: 'rightsViews')
  List<ModuleViewResponseModel>? get rightsViews {
    final value = _rightsViews;
    if (value == null) return null;
    if (_rightsViews is EqualUnmodifiableListView) return _rightsViews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModuleViewResponseModel(id: $id, name: $name, typeId: $typeId, rightsViews: $rightsViews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleViewResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            const DeepCollectionEquality()
                .equals(other._rightsViews, _rightsViews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, typeId,
      const DeepCollectionEquality().hash(_rightsViews));

  /// Create a copy of ModuleViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleViewResponseModelImplCopyWith<_$ModuleViewResponseModelImpl>
      get copyWith => __$$ModuleViewResponseModelImplCopyWithImpl<
          _$ModuleViewResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleViewResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ModuleViewResponseModel implements ModuleViewResponseModel {
  const factory _ModuleViewResponseModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'typeId') final KeyValueResponseModel? typeId,
          @JsonKey(name: 'rightsViews')
          final List<ModuleViewResponseModel>? rightsViews}) =
      _$ModuleViewResponseModelImpl;

  factory _ModuleViewResponseModel.fromJson(Map<String, dynamic> json) =
      _$ModuleViewResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'typeId')
  KeyValueResponseModel? get typeId;
  @override
  @JsonKey(name: 'rightsViews')
  List<ModuleViewResponseModel>? get rightsViews;

  /// Create a copy of ModuleViewResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleViewResponseModelImplCopyWith<_$ModuleViewResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
