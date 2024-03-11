import 'package:flutter/material.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/formatter.dart';
import 'package:goystore_app/data/models/transaction_response_model.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;
  const TransactionCard({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: AppColor.grey300.withOpacity(0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Order Item
          ...transaction.items.map((item) {
            return Row(
              children: [
                Text(
                  item.product.name,
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Text(
                  '${item.quantity} item',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SpaceWidth(4),
                Text(
                  priceFormat(item.product.price * item.quantity),
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          }),

          const SpaceHeight(12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Price',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
              Text(
                priceFormat(transaction.totalPrice),
                style: blackTextStyle.copyWith(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                transaction.transactionNumber,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
              Text(
                transaction.paymentStatus,
                style: transaction.paymentStatus == 'SUCCESS'
                    ? greenTextStyle.copyWith(fontWeight: medium)
                    : redTextStyle.copyWith(fontWeight: medium),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
