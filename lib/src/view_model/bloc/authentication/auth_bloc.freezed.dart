// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String name) onNameChanged,
    required TResult Function() logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String name)? onNameChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(Login value) login,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnNameChanged value) onNameChanged,
    required TResult Function(Logout value) logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Login value)? login,
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnNameChanged value)? onNameChanged,
    TResult? Function(Logout value)? logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(Login value)? login,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnNameChanged value)? onNameChanged,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
    _$SignUpImpl value,
    $Res Function(_$SignUpImpl) then,
  ) = __$$SignUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
    _$SignUpImpl _value,
    $Res Function(_$SignUpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpImpl implements SignUp {
  const _$SignUpImpl();

  @override
  String toString() {
    return 'AuthEvent.signUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String name) onNameChanged,
    required TResult Function() logout,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? logout,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String name)? onNameChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(Login value) login,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnNameChanged value) onNameChanged,
    required TResult Function(Logout value) logout,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Login value)? login,
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnNameChanged value)? onNameChanged,
    TResult? Function(Logout value)? logout,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(Login value)? login,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnNameChanged value)? onNameChanged,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements AuthEvent {
  const factory SignUp() = _$SignUpImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
    _$LoginImpl value,
    $Res Function(_$LoginImpl) then,
  ) = __$$LoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
    _$LoginImpl _value,
    $Res Function(_$LoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginImpl implements Login {
  const _$LoginImpl();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String name) onNameChanged,
    required TResult Function() logout,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? logout,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String name)? onNameChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(Login value) login,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnNameChanged value) onNameChanged,
    required TResult Function(Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Login value)? login,
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnNameChanged value)? onNameChanged,
    TResult? Function(Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(Login value)? login,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnNameChanged value)? onNameChanged,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements AuthEvent {
  const factory Login() = _$LoginImpl;
}

/// @nodoc
abstract class _$$OnPasswordChangedImplCopyWith<$Res> {
  factory _$$OnPasswordChangedImplCopyWith(
    _$OnPasswordChangedImpl value,
    $Res Function(_$OnPasswordChangedImpl) then,
  ) = __$$OnPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$OnPasswordChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnPasswordChangedImpl>
    implements _$$OnPasswordChangedImplCopyWith<$Res> {
  __$$OnPasswordChangedImplCopyWithImpl(
    _$OnPasswordChangedImpl _value,
    $Res Function(_$OnPasswordChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _$OnPasswordChangedImpl(
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$OnPasswordChangedImpl implements OnPasswordChanged {
  const _$OnPasswordChangedImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.onPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPasswordChangedImplCopyWith<_$OnPasswordChangedImpl> get copyWith =>
      __$$OnPasswordChangedImplCopyWithImpl<_$OnPasswordChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String name) onNameChanged,
    required TResult Function() logout,
  }) {
    return onPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? logout,
  }) {
    return onPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String name)? onNameChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(Login value) login,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnNameChanged value) onNameChanged,
    required TResult Function(Logout value) logout,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Login value)? login,
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnNameChanged value)? onNameChanged,
    TResult? Function(Logout value)? logout,
  }) {
    return onPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(Login value)? login,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnNameChanged value)? onNameChanged,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class OnPasswordChanged implements AuthEvent {
  const factory OnPasswordChanged({required final String password}) =
      _$OnPasswordChangedImpl;

  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPasswordChangedImplCopyWith<_$OnPasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnEmailChangedImplCopyWith<$Res> {
  factory _$$OnEmailChangedImplCopyWith(
    _$OnEmailChangedImpl value,
    $Res Function(_$OnEmailChangedImpl) then,
  ) = __$$OnEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$OnEmailChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnEmailChangedImpl>
    implements _$$OnEmailChangedImplCopyWith<$Res> {
  __$$OnEmailChangedImplCopyWithImpl(
    _$OnEmailChangedImpl _value,
    $Res Function(_$OnEmailChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$OnEmailChangedImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$OnEmailChangedImpl implements OnEmailChanged {
  const _$OnEmailChangedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.onEmailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEmailChangedImplCopyWith<_$OnEmailChangedImpl> get copyWith =>
      __$$OnEmailChangedImplCopyWithImpl<_$OnEmailChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String name) onNameChanged,
    required TResult Function() logout,
  }) {
    return onEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? logout,
  }) {
    return onEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String name)? onNameChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(Login value) login,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnNameChanged value) onNameChanged,
    required TResult Function(Logout value) logout,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Login value)? login,
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnNameChanged value)? onNameChanged,
    TResult? Function(Logout value)? logout,
  }) {
    return onEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(Login value)? login,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnNameChanged value)? onNameChanged,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class OnEmailChanged implements AuthEvent {
  const factory OnEmailChanged({required final String email}) =
      _$OnEmailChangedImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnEmailChangedImplCopyWith<_$OnEmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNameChangedImplCopyWith<$Res> {
  factory _$$OnNameChangedImplCopyWith(
    _$OnNameChangedImpl value,
    $Res Function(_$OnNameChangedImpl) then,
  ) = __$$OnNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$OnNameChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnNameChangedImpl>
    implements _$$OnNameChangedImplCopyWith<$Res> {
  __$$OnNameChangedImplCopyWithImpl(
    _$OnNameChangedImpl _value,
    $Res Function(_$OnNameChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$OnNameChangedImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$OnNameChangedImpl implements OnNameChanged {
  const _$OnNameChangedImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.onNameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNameChangedImplCopyWith<_$OnNameChangedImpl> get copyWith =>
      __$$OnNameChangedImplCopyWithImpl<_$OnNameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String name) onNameChanged,
    required TResult Function() logout,
  }) {
    return onNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? logout,
  }) {
    return onNameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String name)? onNameChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (onNameChanged != null) {
      return onNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(Login value) login,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnNameChanged value) onNameChanged,
    required TResult Function(Logout value) logout,
  }) {
    return onNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Login value)? login,
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnNameChanged value)? onNameChanged,
    TResult? Function(Logout value)? logout,
  }) {
    return onNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(Login value)? login,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnNameChanged value)? onNameChanged,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (onNameChanged != null) {
      return onNameChanged(this);
    }
    return orElse();
  }
}

abstract class OnNameChanged implements AuthEvent {
  const factory OnNameChanged({required final String name}) =
      _$OnNameChangedImpl;

  String get name;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNameChangedImplCopyWith<_$OnNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
    _$LogoutImpl value,
    $Res Function(_$LogoutImpl) then,
  ) = __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
    _$LogoutImpl _value,
    $Res Function(_$LogoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String name) onNameChanged,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String name)? onNameChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUp value) signUp,
    required TResult Function(Login value) login,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnNameChanged value) onNameChanged,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUp value)? signUp,
    TResult? Function(Login value)? login,
    TResult? Function(OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(OnEmailChanged value)? onEmailChanged,
    TResult? Function(OnNameChanged value)? onNameChanged,
    TResult? Function(Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUp value)? signUp,
    TResult Function(Login value)? login,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnNameChanged value)? onNameChanged,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$AuthState {
  CoreFailure? get failure => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Set only when login or signUp succeeds; used by the app gate, not form data.
  UserModel? get authenticatedUser => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({
    CoreFailure? failure,
    UserModel? user,
    bool isLoading,
    UserModel? authenticatedUser,
  });
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? user = freezed,
    Object? isLoading = null,
    Object? authenticatedUser = freezed,
  }) {
    return _then(
      _value.copyWith(
            failure:
                freezed == failure
                    ? _value.failure
                    : failure // ignore: cast_nullable_to_non_nullable
                        as CoreFailure?,
            user:
                freezed == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserModel?,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            authenticatedUser:
                freezed == authenticatedUser
                    ? _value.authenticatedUser
                    : authenticatedUser // ignore: cast_nullable_to_non_nullable
                        as UserModel?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
    _$AuthStateImpl value,
    $Res Function(_$AuthStateImpl) then,
  ) = __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    CoreFailure? failure,
    UserModel? user,
    bool isLoading,
    UserModel? authenticatedUser,
  });
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
    _$AuthStateImpl _value,
    $Res Function(_$AuthStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? user = freezed,
    Object? isLoading = null,
    Object? authenticatedUser = freezed,
  }) {
    return _then(
      _$AuthStateImpl(
        failure:
            freezed == failure
                ? _value.failure
                : failure // ignore: cast_nullable_to_non_nullable
                    as CoreFailure?,
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel?,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        authenticatedUser:
            freezed == authenticatedUser
                ? _value.authenticatedUser
                : authenticatedUser // ignore: cast_nullable_to_non_nullable
                    as UserModel?,
      ),
    );
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl({
    required this.failure,
    this.user,
    this.isLoading = false,
    this.authenticatedUser,
  });

  @override
  final CoreFailure? failure;
  @override
  final UserModel? user;
  @override
  @JsonKey()
  final bool isLoading;

  /// Set only when login or signUp succeeds; used by the app gate, not form data.
  @override
  final UserModel? authenticatedUser;

  @override
  String toString() {
    return 'AuthState(failure: $failure, user: $user, isLoading: $isLoading, authenticatedUser: $authenticatedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.authenticatedUser, authenticatedUser) ||
                other.authenticatedUser == authenticatedUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failure, user, isLoading, authenticatedUser);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({
    required final CoreFailure? failure,
    final UserModel? user,
    final bool isLoading,
    final UserModel? authenticatedUser,
  }) = _$AuthStateImpl;

  @override
  CoreFailure? get failure;
  @override
  UserModel? get user;
  @override
  bool get isLoading;

  /// Set only when login or signUp succeeds; used by the app gate, not form data.
  @override
  UserModel? get authenticatedUser;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
