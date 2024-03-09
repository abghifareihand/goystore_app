import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goystore_app/data/datasources/auth_remote_datasource.dart';
import 'package:goystore_app/data/models/auth_response_model.dart';
import 'package:goystore_app/data/models/request/login_request_model.dart';
import 'package:goystore_app/data/models/request/register_request_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _Initial()) {
    on<_Register>((event, emit) async {
      emit(const _Loading());
      final result =
          await AuthRemoteDatasource().register(event.registerRequest);
      result.fold(
        (error) => emit(_ErrorRegister(error)),
        (data) => emit(_LoadedRegister(data)),
      );
    });

    on<_Login>((event, emit) async {
      emit(const _Loading());
      final result = await AuthRemoteDatasource().login(event.loginRequest);
      result.fold(
        (error) => emit(_ErrorLogin(error)),
        (data) => emit(_LoadedLogin(data)),
      );
    });
  }
}
