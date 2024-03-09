part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.register(RegisterRequestModel registerRequest) = _Register;
  const factory AuthEvent.login(LoginRequestModel loginRequest) = _Login;
}