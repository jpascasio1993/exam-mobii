// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(
            String message, Exception exception, StackTrace? stackTrace)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(
            String message, Exception exception, StackTrace? stackTrace)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(
            String message, Exception exception, StackTrace? stackTrace)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ResultSuccessCopyWith<T, $Res> {
  factory _$$_ResultSuccessCopyWith(
          _$_ResultSuccess<T> value, $Res Function(_$_ResultSuccess<T>) then) =
      __$$_ResultSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_ResultSuccessCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$_ResultSuccess<T>>
    implements _$$_ResultSuccessCopyWith<T, $Res> {
  __$$_ResultSuccessCopyWithImpl(
      _$_ResultSuccess<T> _value, $Res Function(_$_ResultSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ResultSuccess<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ResultSuccess<T> implements _ResultSuccess<T> {
  const _$_ResultSuccess(this.data);

  @override
  final T data;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultSuccessCopyWith<T, _$_ResultSuccess<T>> get copyWith =>
      __$$_ResultSuccessCopyWithImpl<T, _$_ResultSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(
            String message, Exception exception, StackTrace? stackTrace)
        error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(
            String message, Exception exception, StackTrace? stackTrace)?
        error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(
            String message, Exception exception, StackTrace? stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }
}

abstract class _ResultSuccess<T> implements Result<T> {
  const factory _ResultSuccess(final T data) = _$_ResultSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_ResultSuccessCopyWith<T, _$_ResultSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResultExceptionCopyWith<T, $Res> {
  factory _$$_ResultExceptionCopyWith(_$_ResultException<T> value,
          $Res Function(_$_ResultException<T>) then) =
      __$$_ResultExceptionCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message, Exception exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$_ResultExceptionCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$_ResultException<T>>
    implements _$$_ResultExceptionCopyWith<T, $Res> {
  __$$_ResultExceptionCopyWithImpl(
      _$_ResultException<T> _value, $Res Function(_$_ResultException<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exception = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_ResultException<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_ResultException<T> implements _ResultException<T> {
  const _$_ResultException(this.message,
      {required this.exception, this.stackTrace});

  @override
  final String message;
  @override
  final Exception exception;
  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultException<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, exception, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultExceptionCopyWith<T, _$_ResultException<T>> get copyWith =>
      __$$_ResultExceptionCopyWithImpl<T, _$_ResultException<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(
            String message, Exception exception, StackTrace? stackTrace)
        error,
  }) {
    return error(message, exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(
            String message, Exception exception, StackTrace? stackTrace)?
        error,
  }) {
    return error?.call(message, exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(
            String message, Exception exception, StackTrace? stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, exception, stackTrace);
    }
    return orElse();
  }
}

abstract class _ResultException<T> implements Result<T> {
  const factory _ResultException(final String message,
      {required final Exception exception,
      final StackTrace? stackTrace}) = _$_ResultException<T>;

  String get message;
  Exception get exception;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$_ResultExceptionCopyWith<T, _$_ResultException<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
