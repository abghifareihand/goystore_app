import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/components/loading_spinkit.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/formatter.dart';
import 'package:goystore_app/presentation/transaction/widgets/transaction_card.dart';

import '../bloc/transactions/transactions_bloc.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        color: AppColor.primary,
        onRefresh: () async {
          context
              .read<TransactionsBloc>()
              .add(const TransactionsEvent.getTransactions());
        },
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            BlocBuilder<TransactionsBloc, TransactionsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const LoadingSpinkit();
                  },
                  loading: () {
                    return const LoadingSpinkit();
                  },
                  loaded: (transactionResponse) {
                    final transaction = transactionResponse.data;
                    if (transactionResponse.data.isEmpty) {
                      return const Center(
                        child: Text('Tidak ada transaksi'),
                      );
                    }
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: transactionResponse.data.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          height: 2,
                          color: AppColor.grey300.withOpacity(0.2),
                        );
                      },
                      itemBuilder: (context, index) {
                        return TransactionCard(transaction: transaction[index]);
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
