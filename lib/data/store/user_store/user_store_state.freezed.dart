// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_store_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserStoreState {
  List<User> get users => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStoreStateCopyWith<UserStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStoreStateCopyWith<$Res> {
  factory $UserStoreStateCopyWith(
          UserStoreState value, $Res Function(UserStoreState) then) =
      _$UserStoreStateCopyWithImpl<$Res, UserStoreState>;
  @useResult
  $Res call(
      {List<User> users,
      bool isLoading,
      String? errorMessage,
      Exception? exception});
}

/// @nodoc
class _$UserStoreStateCopyWithImpl<$Res, $Val extends UserStoreState>
    implements $UserStoreStateCopyWith<$Res> {
  _$UserStoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserStoreStateCopyWith<$Res>
    implements $UserStoreStateCopyWith<$Res> {
  factory _$$_UserStoreStateCopyWith(
          _$_UserStoreState value, $Res Function(_$_UserStoreState) then) =
      __$$_UserStoreStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User> users,
      bool isLoading,
      String? errorMessage,
      Exception? exception});
}

/// @nodoc
class __$$_UserStoreStateCopyWithImpl<$Res>
    extends _$UserStoreStateCopyWithImpl<$Res, _$_UserStoreState>
    implements _$$_UserStoreStateCopyWith<$Res> {
  __$$_UserStoreStateCopyWithImpl(
      _$_UserStoreState _value, $Res Function(_$_UserStoreState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$_UserStoreState(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_UserStoreState implements _UserStoreState {
  const _$_UserStoreState(
      {final List<User> users = const [],
      this.isLoading = false,
      this.errorMessage,
      this.exception})
      : _users = users;

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'UserStoreState(users: $users, isLoading: $isLoading, errorMessage: $errorMessage, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStoreState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      isLoading,
      errorMessage,
      exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStoreStateCopyWith<_$_UserStoreState> get copyWith =>
      __$$_UserStoreStateCopyWithImpl<_$_UserStoreState>(this, _$identity);
}

abstract class _UserStoreState implements UserStoreState {
  const factory _UserStoreState(
      {final List<User> users,
      final bool isLoading,
      final String? errorMessage,
      final Exception? exception}) = _$_UserStoreState;

  @override
  List<User> get users;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  _$$_UserStoreStateCopyWith<_$_UserStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
