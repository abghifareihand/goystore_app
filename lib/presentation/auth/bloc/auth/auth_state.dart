part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loadedRegister(AuthResponseModel authResponse) = _LoadedRegister;
  const factory AuthState.loadedLogin(AuthResponseModel authResponse) = _LoadedLogin;
  const factory AuthState.errorRegister(String message) = _ErrorRegister;
  const factory AuthState.errorLogin(String message) = _ErrorLogin;
}
