part of 'transactions_bloc.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState.initial() = _Initial;
    const factory TransactionsState.loading() = _Loading;
  const factory TransactionsState.loaded(TransactionResponseModel transactionResponse) = _Loaded;
  const factory TransactionsState.error(String message) = _Error;
}
