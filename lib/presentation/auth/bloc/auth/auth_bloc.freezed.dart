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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RegisterRequestModel registerRequest) register,
    required TResult Function(LoginRequestModel loginRequest) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RegisterRequestModel registerRequest)? register,
    TResult? Function(LoginRequestModel loginRequest)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RegisterRequestModel registerRequest)? register,
    TResult Function(LoginRequestModel loginRequest)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RegisterRequestModel registerRequest) register,
    required TResult Function(LoginRequestModel loginRequest) login,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RegisterRequestModel registerRequest)? register,
    TResult? Function(LoginRequestModel loginRequest)? login,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RegisterRequestModel registerRequest)? register,
    TResult Function(LoginRequestModel loginRequest)? login,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterRequestModel registerRequest});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerRequest = null,
  }) {
    return _then(_$RegisterImpl(
      null == registerRequest
          ? _value.registerRequest
          : registerRequest // ignore: cast_nullable_to_non_nullable
              as RegisterRequestModel,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(this.registerRequest);

  @override
  final RegisterRequestModel registerRequest;

  @override
  String toString() {
    return 'AuthEvent.register(registerRequest: $registerRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.registerRequest, registerRequest) ||
                other.registerRequest == registerRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RegisterRequestModel registerRequest) register,
    required TResult Function(LoginRequestModel loginRequest) login,
  }) {
    return register(registerRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RegisterRequestModel registerRequest)? register,
    TResult? Function(LoginRequestModel loginRequest)? login,
  }) {
    return register?.call(registerRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RegisterRequestModel registerRequest)? register,
    TResult Function(LoginRequestModel loginRequest)? login,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(registerRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(final RegisterRequestModel registerRequest) =
      _$RegisterImpl;

  RegisterRequestModel get registerRequest;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequestModel loginRequest});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequest = null,
  }) {
    return _then(_$LoginImpl(
      null == loginRequest
          ? _value.loginRequest
          : loginRequest // ignore: cast_nullable_to_non_nullable
              as LoginRequestModel,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.loginRequest);

  @override
  final LoginRequestModel loginRequest;

  @override
  String toString() {
    return 'AuthEvent.login(loginRequest: $loginRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.loginRequest, loginRequest) ||
                other.loginRequest == loginRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RegisterRequestModel registerRequest) register,
    required TResult Function(LoginRequestModel loginRequest) login,
  }) {
    return login(loginRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RegisterRequestModel registerRequest)? register,
    TResult? Function(LoginRequestModel loginRequest)? login,
  }) {
    return login?.call(loginRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RegisterRequestModel registerRequest)? register,
    TResult Function(LoginRequestModel loginRequest)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final LoginRequestModel loginRequest) = _$LoginImpl;

  LoginRequestModel get loginRequest;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponse) loadedRegister,
    required TResult Function(AuthResponseModel authResponse) loadedLogin,
    required TResult Function(String message) errorRegister,
    required TResult Function(String message) errorLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponse)? loadedRegister,
    TResult? Function(AuthResponseModel authResponse)? loadedLogin,
    TResult? Function(String message)? errorRegister,
    TResult? Function(String message)? errorLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponse)? loadedRegister,
    TResult Function(AuthResponseModel authResponse)? loadedLogin,
    TResult Function(String message)? errorRegister,
    TResult Function(String message)? errorLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedRegister value) loadedRegister,
    required TResult Function(_LoadedLogin value) loadedLogin,
    required TResult Function(_ErrorRegister value) errorRegister,
    required TResult Function(_ErrorLogin value) errorLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedRegister value)? loadedRegister,
    TResult? Function(_LoadedLogin value)? loadedLogin,
    TResult? Function(_ErrorRegister value)? errorRegister,
    TResult? Function(_ErrorLogin value)? errorLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedRegister value)? loadedRegister,
    TResult Function(_LoadedLogin value)? loadedLogin,
    TResult Function(_ErrorRegister value)? errorRegister,
    TResult Function(_ErrorLogin value)? errorLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponse) loadedRegister,
    required TResult Function(AuthResponseModel authResponse) loadedLogin,
    required TResult Function(String message) errorRegister,
    required TResult Function(String message) errorLogin,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponse)? loadedRegister,
    TResult? Function(AuthResponseModel authResponse)? loadedLogin,
    TResult? Function(String message)? errorRegister,
    TResult? Function(String message)? errorLogin,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponse)? loadedRegister,
    TResult Function(AuthResponseModel authResponse)? loadedLogin,
    TResult Function(String message)? errorRegister,
    TResult Function(String message)? errorLogin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedRegister value) loadedRegister,
    required TResult Function(_LoadedLogin value) loadedLogin,
    required TResult Function(_ErrorRegister value) errorRegister,
    required TResult Function(_ErrorLogin value) errorLogin,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedRegister value)? loadedRegister,
    TResult? Function(_LoadedLogin value)? loadedLogin,
    TResult? Function(_ErrorRegister value)? errorRegister,
    TResult? Function(_ErrorLogin value)? errorLogin,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedRegister value)? loadedRegister,
    TResult Function(_LoadedLogin value)? loadedLogin,
    TResult Function(_ErrorRegister value)? errorRegister,
    TResult Function(_ErrorLogin value)? errorLogin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponse) loadedRegister,
    required TResult Function(AuthResponseModel authResponse) loadedLogin,
    required TResult Function(String message) errorRegister,
    required TResult Function(String message) errorLogin,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponse)? loadedRegister,
    TResult? Function(AuthResponseModel authResponse)? loadedLogin,
    TResult? Function(String message)? errorRegister,
    TResult? Function(String message)? errorLogin,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponse)? loadedRegister,
    TResult Function(AuthResponseModel authResponse)? loadedLogin,
    TResult Function(String message)? errorRegister,
    TResult Function(String message)? errorLogin,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedRegister value) loadedRegister,
    required TResult Function(_LoadedLogin value) loadedLogin,
    required TResult Function(_ErrorRegister value) errorRegister,
    required TResult Function(_ErrorLogin value) errorLogin,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedRegister value)? loadedRegister,
    TResult? Function(_LoadedLogin value)? loadedLogin,
    TResult? Function(_ErrorRegister value)? errorRegister,
    TResult? Function(_ErrorLogin value)? errorLogin,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedRegister value)? loadedRegister,
    TResult Function(_LoadedLogin value)? loadedLogin,
    TResult Function(_ErrorRegister value)? errorRegister,
    TResult Function(_ErrorLogin value)? errorLogin,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedRegisterImplCopyWith<$Res> {
  factory _$$LoadedRegisterImplCopyWith(_$LoadedRegisterImpl value,
          $Res Function(_$LoadedRegisterImpl) then) =
      __$$LoadedRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponseModel authResponse});
}

/// @nodoc
class __$$LoadedRegisterImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadedRegisterImpl>
    implements _$$LoadedRegisterImplCopyWith<$Res> {
  __$$LoadedRegisterImplCopyWithImpl(
      _$LoadedRegisterImpl _value, $Res Function(_$LoadedRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authResponse = null,
  }) {
    return _then(_$LoadedRegisterImpl(
      null == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel,
    ));
  }
}

/// @nodoc

class _$LoadedRegisterImpl implements _LoadedRegister {
  const _$LoadedRegisterImpl(this.authResponse);

  @override
  final AuthResponseModel authResponse;

  @override
  String toString() {
    return 'AuthState.loadedRegister(authResponse: $authResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedRegisterImpl &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedRegisterImplCopyWith<_$LoadedRegisterImpl> get copyWith =>
      __$$LoadedRegisterImplCopyWithImpl<_$LoadedRegisterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponse) loadedRegister,
    required TResult Function(AuthResponseModel authResponse) loadedLogin,
    required TResult Function(String message) errorRegister,
    required TResult Function(String message) errorLogin,
  }) {
    return loadedRegister(authResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponse)? loadedRegister,
    TResult? Function(AuthResponseModel authResponse)? loadedLogin,
    TResult? Function(String message)? errorRegister,
    TResult? Function(String message)? errorLogin,
  }) {
    return loadedRegister?.call(authResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponse)? loadedRegister,
    TResult Function(AuthResponseModel authResponse)? loadedLogin,
    TResult Function(String message)? errorRegister,
    TResult Function(String message)? errorLogin,
    required TResult orElse(),
  }) {
    if (loadedRegister != null) {
      return loadedRegister(authResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedRegister value) loadedRegister,
    required TResult Function(_LoadedLogin value) loadedLogin,
    required TResult Function(_ErrorRegister value) errorRegister,
    required TResult Function(_ErrorLogin value) errorLogin,
  }) {
    return loadedRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedRegister value)? loadedRegister,
    TResult? Function(_LoadedLogin value)? loadedLogin,
    TResult? Function(_ErrorRegister value)? errorRegister,
    TResult? Function(_ErrorLogin value)? errorLogin,
  }) {
    return loadedRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedRegister value)? loadedRegister,
    TResult Function(_LoadedLogin value)? loadedLogin,
    TResult Function(_ErrorRegister value)? errorRegister,
    TResult Function(_ErrorLogin value)? errorLogin,
    required TResult orElse(),
  }) {
    if (loadedRegister != null) {
      return loadedRegister(this);
    }
    return orElse();
  }
}

abstract class _LoadedRegister implements AuthState {
  const factory _LoadedRegister(final AuthResponseModel authResponse) =
      _$LoadedRegisterImpl;

  AuthResponseModel get authResponse;
  @JsonKey(ignore: true)
  _$$LoadedRegisterImplCopyWith<_$LoadedRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedLoginImplCopyWith<$Res> {
  factory _$$LoadedLoginImplCopyWith(
          _$LoadedLoginImpl value, $Res Function(_$LoadedLoginImpl) then) =
      __$$LoadedLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponseModel authResponse});
}

/// @nodoc
class __$$LoadedLoginImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadedLoginImpl>
    implements _$$LoadedLoginImplCopyWith<$Res> {
  __$$LoadedLoginImplCopyWithImpl(
      _$LoadedLoginImpl _value, $Res Function(_$LoadedLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authResponse = null,
  }) {
    return _then(_$LoadedLoginImpl(
      null == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel,
    ));
  }
}

/// @nodoc

class _$LoadedLoginImpl implements _LoadedLogin {
  const _$LoadedLoginImpl(this.authResponse);

  @override
  final AuthResponseModel authResponse;

  @override
  String toString() {
    return 'AuthState.loadedLogin(authResponse: $authResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedLoginImpl &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedLoginImplCopyWith<_$LoadedLoginImpl> get copyWith =>
      __$$LoadedLoginImplCopyWithImpl<_$LoadedLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponse) loadedRegister,
    required TResult Function(AuthResponseModel authResponse) loadedLogin,
    required TResult Function(String message) errorRegister,
    required TResult Function(String message) errorLogin,
  }) {
    return loadedLogin(authResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponse)? loadedRegister,
    TResult? Function(AuthResponseModel authResponse)? loadedLogin,
    TResult? Function(String message)? errorRegister,
    TResult? Function(String message)? errorLogin,
  }) {
    return loadedLogin?.call(authResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponse)? loadedRegister,
    TResult Function(AuthResponseModel authResponse)? loadedLogin,
    TResult Function(String message)? errorRegister,
    TResult Function(String message)? errorLogin,
    required TResult orElse(),
  }) {
    if (loadedLogin != null) {
      return loadedLogin(authResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedRegister value) loadedRegister,
    required TResult Function(_LoadedLogin value) loadedLogin,
    required TResult Function(_ErrorRegister value) errorRegister,
    required TResult Function(_ErrorLogin value) errorLogin,
  }) {
    return loadedLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedRegister value)? loadedRegister,
    TResult? Function(_LoadedLogin value)? loadedLogin,
    TResult? Function(_ErrorRegister value)? errorRegister,
    TResult? Function(_ErrorLogin value)? errorLogin,
  }) {
    return loadedLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedRegister value)? loadedRegister,
    TResult Function(_LoadedLogin value)? loadedLogin,
    TResult Function(_ErrorRegister value)? errorRegister,
    TResult Function(_ErrorLogin value)? errorLogin,
    required TResult orElse(),
  }) {
    if (loadedLogin != null) {
      return loadedLogin(this);
    }
    return orElse();
  }
}

abstract class _LoadedLogin implements AuthState {
  const factory _LoadedLogin(final AuthResponseModel authResponse) =
      _$LoadedLoginImpl;

  AuthResponseModel get authResponse;
  @JsonKey(ignore: true)
  _$$LoadedLoginImplCopyWith<_$LoadedLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorRegisterImplCopyWith<$Res> {
  factory _$$ErrorRegisterImplCopyWith(
          _$ErrorRegisterImpl value, $Res Function(_$ErrorRegisterImpl) then) =
      __$$ErrorRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorRegisterImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorRegisterImpl>
    implements _$$ErrorRegisterImplCopyWith<$Res> {
  __$$ErrorRegisterImplCopyWithImpl(
      _$ErrorRegisterImpl _value, $Res Function(_$ErrorRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorRegisterImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorRegisterImpl implements _ErrorRegister {
  const _$ErrorRegisterImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.errorRegister(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorRegisterImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorRegisterImplCopyWith<_$ErrorRegisterImpl> get copyWith =>
      __$$ErrorRegisterImplCopyWithImpl<_$ErrorRegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponse) loadedRegister,
    required TResult Function(AuthResponseModel authResponse) loadedLogin,
    required TResult Function(String message) errorRegister,
    required TResult Function(String message) errorLogin,
  }) {
    return errorRegister(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponse)? loadedRegister,
    TResult? Function(AuthResponseModel authResponse)? loadedLogin,
    TResult? Function(String message)? errorRegister,
    TResult? Function(String message)? errorLogin,
  }) {
    return errorRegister?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponse)? loadedRegister,
    TResult Function(AuthResponseModel authResponse)? loadedLogin,
    TResult Function(String message)? errorRegister,
    TResult Function(String message)? errorLogin,
    required TResult orElse(),
  }) {
    if (errorRegister != null) {
      return errorRegister(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedRegister value) loadedRegister,
    required TResult Function(_LoadedLogin value) loadedLogin,
    required TResult Function(_ErrorRegister value) errorRegister,
    required TResult Function(_ErrorLogin value) errorLogin,
  }) {
    return errorRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedRegister value)? loadedRegister,
    TResult? Function(_LoadedLogin value)? loadedLogin,
    TResult? Function(_ErrorRegister value)? errorRegister,
    TResult? Function(_ErrorLogin value)? errorLogin,
  }) {
    return errorRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedRegister value)? loadedRegister,
    TResult Function(_LoadedLogin value)? loadedLogin,
    TResult Function(_ErrorRegister value)? errorRegister,
    TResult Function(_ErrorLogin value)? errorLogin,
    required TResult orElse(),
  }) {
    if (errorRegister != null) {
      return errorRegister(this);
    }
    return orElse();
  }
}

abstract class _ErrorRegister implements AuthState {
  const factory _ErrorRegister(final String message) = _$ErrorRegisterImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorRegisterImplCopyWith<_$ErrorRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorLoginImplCopyWith<$Res> {
  factory _$$ErrorLoginImplCopyWith(
          _$ErrorLoginImpl value, $Res Function(_$ErrorLoginImpl) then) =
      __$$ErrorLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorLoginImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorLoginImpl>
    implements _$$ErrorLoginImplCopyWith<$Res> {
  __$$ErrorLoginImplCopyWithImpl(
      _$ErrorLoginImpl _value, $Res Function(_$ErrorLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorLoginImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLoginImpl implements _ErrorLogin {
  const _$ErrorLoginImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.errorLogin(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLoginImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLoginImplCopyWith<_$ErrorLoginImpl> get copyWith =>
      __$$ErrorLoginImplCopyWithImpl<_$ErrorLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponse) loadedRegister,
    required TResult Function(AuthResponseModel authResponse) loadedLogin,
    required TResult Function(String message) errorRegister,
    required TResult Function(String message) errorLogin,
  }) {
    return errorLogin(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponse)? loadedRegister,
    TResult? Function(AuthResponseModel authResponse)? loadedLogin,
    TResult? Function(String message)? errorRegister,
    TResult? Function(String message)? errorLogin,
  }) {
    return errorLogin?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponse)? loadedRegister,
    TResult Function(AuthResponseModel authResponse)? loadedLogin,
    TResult Function(String message)? errorRegister,
    TResult Function(String message)? errorLogin,
    required TResult orElse(),
  }) {
    if (errorLogin != null) {
      return errorLogin(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedRegister value) loadedRegister,
    required TResult Function(_LoadedLogin value) loadedLogin,
    required TResult Function(_ErrorRegister value) errorRegister,
    required TResult Function(_ErrorLogin value) errorLogin,
  }) {
    return errorLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedRegister value)? loadedRegister,
    TResult? Function(_LoadedLogin value)? loadedLogin,
    TResult? Function(_ErrorRegister value)? errorRegister,
    TResult? Function(_ErrorLogin value)? errorLogin,
  }) {
    return errorLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedRegister value)? loadedRegister,
    TResult Function(_LoadedLogin value)? loadedLogin,
    TResult Function(_ErrorRegister value)? errorRegister,
    TResult Function(_ErrorLogin value)? errorLogin,
    required TResult orElse(),
  }) {
    if (errorLogin != null) {
      return errorLogin(this);
    }
    return orElse();
  }
}

abstract class _ErrorLogin implements AuthState {
  const factory _ErrorLogin(final String message) = _$ErrorLoginImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorLoginImplCopyWith<_$ErrorLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
