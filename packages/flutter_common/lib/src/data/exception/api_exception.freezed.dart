// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiException {
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiExceptionCopyWith<ApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
  @useResult
  $Res call({String? message, String? code, int? statusCode});
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$BadRequestImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl implements BadRequest {
  const _$BadRequestImpl(this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.badRequest(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return badRequest(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return badRequest?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements ApiException {
  const factory BadRequest(final String path, final String? message,
      final String? code, final int? statusCode) = _$BadRequestImpl;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$UnauthorizedImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl implements Unauthorized {
  const _$UnauthorizedImpl(this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.unauthorized(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return unauthorized(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return unauthorized?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements ApiException {
  const factory Unauthorized(final String path, final String? message,
      final String? code, final int? statusCode) = _$UnauthorizedImpl;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$ForbiddenImplCopyWith(
          _$ForbiddenImpl value, $Res Function(_$ForbiddenImpl) then) =
      __$$ForbiddenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$ForbiddenImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ForbiddenImpl>
    implements _$$ForbiddenImplCopyWith<$Res> {
  __$$ForbiddenImplCopyWithImpl(
      _$ForbiddenImpl _value, $Res Function(_$ForbiddenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$ForbiddenImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ForbiddenImpl implements Forbidden {
  const _$ForbiddenImpl(this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.forbidden(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenImplCopyWith<_$ForbiddenImpl> get copyWith =>
      __$$ForbiddenImplCopyWithImpl<_$ForbiddenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return forbidden(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return forbidden?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class Forbidden implements ApiException {
  const factory Forbidden(final String path, final String? message,
      final String? code, final int? statusCode) = _$ForbiddenImpl;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ForbiddenImplCopyWith<_$ForbiddenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$NotFoundImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NotFoundImpl implements NotFound {
  const _$NotFoundImpl(this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.notFound(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      __$$NotFoundImplCopyWithImpl<_$NotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return notFound(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return notFound?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements ApiException {
  const factory NotFound(final String path, final String? message,
      final String? code, final int? statusCode) = _$NotFoundImpl;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerErrorImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$InternalServerErrorImplCopyWith(_$InternalServerErrorImpl value,
          $Res Function(_$InternalServerErrorImpl) then) =
      __$$InternalServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$InternalServerErrorImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$InternalServerErrorImpl>
    implements _$$InternalServerErrorImplCopyWith<$Res> {
  __$$InternalServerErrorImplCopyWithImpl(_$InternalServerErrorImpl _value,
      $Res Function(_$InternalServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$InternalServerErrorImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$InternalServerErrorImpl implements InternalServerError {
  const _$InternalServerErrorImpl(
      this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.internalServerError(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerErrorImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalServerErrorImplCopyWith<_$InternalServerErrorImpl> get copyWith =>
      __$$InternalServerErrorImplCopyWithImpl<_$InternalServerErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return internalServerError(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return internalServerError?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class InternalServerError implements ApiException {
  const factory InternalServerError(final String path, final String? message,
      final String? code, final int? statusCode) = _$InternalServerErrorImpl;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$InternalServerErrorImplCopyWith<_$InternalServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$NoConnectionImplCopyWith(
          _$NoConnectionImpl value, $Res Function(_$NoConnectionImpl) then) =
      __$$NoConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$NoConnectionImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$NoConnectionImpl>
    implements _$$NoConnectionImplCopyWith<$Res> {
  __$$NoConnectionImplCopyWithImpl(
      _$NoConnectionImpl _value, $Res Function(_$NoConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$NoConnectionImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NoConnectionImpl implements NoConnection {
  const _$NoConnectionImpl(this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.noConnection(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnectionImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoConnectionImplCopyWith<_$NoConnectionImpl> get copyWith =>
      __$$NoConnectionImplCopyWithImpl<_$NoConnectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return noConnection(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return noConnection?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class NoConnection implements ApiException {
  const factory NoConnection(final String path, final String? message,
      final String? code, final int? statusCode) = _$NoConnectionImpl;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$NoConnectionImplCopyWith<_$NoConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$OtherImplCopyWith(
          _$OtherImpl value, $Res Function(_$OtherImpl) then) =
      __$$OtherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$OtherImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$OtherImpl>
    implements _$$OtherImplCopyWith<$Res> {
  __$$OtherImplCopyWithImpl(
      _$OtherImpl _value, $Res Function(_$OtherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$OtherImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OtherImpl implements Other {
  const _$OtherImpl(this.message, this.code, this.statusCode);

  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.other(message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      __$$OtherImplCopyWithImpl<_$OtherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return other(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return other?.call(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class Other implements ApiException {
  const factory Other(
          final String? message, final String? code, final int? statusCode) =
      _$OtherImpl;

  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerMaintenanceImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$ServerMaintenanceImplCopyWith(_$ServerMaintenanceImpl value,
          $Res Function(_$ServerMaintenanceImpl) then) =
      __$$ServerMaintenanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$ServerMaintenanceImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ServerMaintenanceImpl>
    implements _$$ServerMaintenanceImplCopyWith<$Res> {
  __$$ServerMaintenanceImplCopyWithImpl(_$ServerMaintenanceImpl _value,
      $Res Function(_$ServerMaintenanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerMaintenanceImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ServerMaintenanceImpl implements ServerMaintenance {
  const _$ServerMaintenanceImpl(
      this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.maintenance(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerMaintenanceImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerMaintenanceImplCopyWith<_$ServerMaintenanceImpl> get copyWith =>
      __$$ServerMaintenanceImplCopyWithImpl<_$ServerMaintenanceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return maintenance(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return maintenance?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (maintenance != null) {
      return maintenance(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return maintenance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return maintenance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (maintenance != null) {
      return maintenance(this);
    }
    return orElse();
  }
}

abstract class ServerMaintenance implements ApiException {
  const factory ServerMaintenance(final String path, final String? message,
      final String? code, final int? statusCode) = _$ServerMaintenanceImpl;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ServerMaintenanceImplCopyWith<_$ServerMaintenanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
