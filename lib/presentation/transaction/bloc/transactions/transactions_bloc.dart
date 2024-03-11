import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goystore_app/data/datasources/transaction_remote_datasource.dart';
import 'package:goystore_app/data/models/transaction_response_model.dart';

part 'transactions_event.dart';
part 'transactions_state.dart';
part 'transactions_bloc.freezed.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  TransactionsBloc() : super(const _Initial()) {
    on<_GetTransactions>((event, emit) async {
      emit(const _Loading());
      final result = await TransactionRemoteDatasource().getTransaction();
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data)),
      );
    });
  }
}
