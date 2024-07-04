// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactEntity _$ContactEntityFromJson(Map<String, dynamic> json) {
  return _ContactEntity.fromJson(json);
}

/// @nodoc
mixin _$ContactEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get mac => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  String? get creditCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactEntityCopyWith<ContactEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactEntityCopyWith<$Res> {
  factory $ContactEntityCopyWith(
          ContactEntity value, $Res Function(ContactEntity) then) =
      _$ContactEntityCopyWithImpl<$Res, ContactEntity>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? city,
      String? mac,
      String? timestamp,
      String? creditCard});
}

/// @nodoc
class _$ContactEntityCopyWithImpl<$Res, $Val extends ContactEntity>
    implements $ContactEntityCopyWith<$Res> {
  _$ContactEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? city = freezed,
    Object? mac = freezed,
    Object? timestamp = freezed,
    Object? creditCard = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCard: freezed == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactEntityImplCopyWith<$Res>
    implements $ContactEntityCopyWith<$Res> {
  factory _$$ContactEntityImplCopyWith(
          _$ContactEntityImpl value, $Res Function(_$ContactEntityImpl) then) =
      __$$ContactEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? city,
      String? mac,
      String? timestamp,
      String? creditCard});
}

/// @nodoc
class __$$ContactEntityImplCopyWithImpl<$Res>
    extends _$ContactEntityCopyWithImpl<$Res, _$ContactEntityImpl>
    implements _$$ContactEntityImplCopyWith<$Res> {
  __$$ContactEntityImplCopyWithImpl(
      _$ContactEntityImpl _value, $Res Function(_$ContactEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? city = freezed,
    Object? mac = freezed,
    Object? timestamp = freezed,
    Object? creditCard = freezed,
  }) {
    return _then(_$ContactEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCard: freezed == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactEntityImpl implements _ContactEntity {
  const _$ContactEntityImpl(
      {this.name,
      this.email,
      this.city,
      this.mac,
      this.timestamp,
      this.creditCard});

  factory _$ContactEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactEntityImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? city;
  @override
  final String? mac;
  @override
  final String? timestamp;
  @override
  final String? creditCard;

  @override
  String toString() {
    return 'ContactEntity(name: $name, email: $email, city: $city, mac: $mac, timestamp: $timestamp, creditCard: $creditCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.mac, mac) || other.mac == mac) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, city, mac, timestamp, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactEntityImplCopyWith<_$ContactEntityImpl> get copyWith =>
      __$$ContactEntityImplCopyWithImpl<_$ContactEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactEntityImplToJson(
      this,
    );
  }
}

abstract class _ContactEntity implements ContactEntity {
  const factory _ContactEntity(
      {final String? name,
      final String? email,
      final String? city,
      final String? mac,
      final String? timestamp,
      final String? creditCard}) = _$ContactEntityImpl;

  factory _ContactEntity.fromJson(Map<String, dynamic> json) =
      _$ContactEntityImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get city;
  @override
  String? get mac;
  @override
  String? get timestamp;
  @override
  String? get creditCard;
  @override
  @JsonKey(ignore: true)
  _$$ContactEntityImplCopyWith<_$ContactEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
