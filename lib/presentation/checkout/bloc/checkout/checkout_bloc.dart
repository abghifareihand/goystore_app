import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goystore_app/data/datasources/checkout_remote_datasource.dart';
import 'package:goystore_app/data/models/checkout_response_model.dart';
import 'package:goystore_app/data/models/request/checkout_request_model.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const _Initial()) {
    on<_Checkout>((event, emit) async {
       emit(const _Loading());
      final result = await CheckoutRemoteDatasource().checkout(event.checkoutRequest);
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data)),
      );
    });
  }
}
