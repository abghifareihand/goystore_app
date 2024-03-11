import 'package:flutter/material.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/formatter.dart';
import 'package:goystore_app/core/extensions/navigator.dart';
import 'package:goystore_app/data/models/transaction_response_model.dart';
import 'package:goystore_app/presentation/transaction/pages/detail_transaction_page.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;
  const TransactionCard({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        context.push(
          DetailTransactionPage(
            itemTransaction: transaction.items,
          ),
        );
      },
      child: Container(
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
            // / Order Item
            // ...transaction.items.map((item) {
            //   return Row(
            //     children: [
            //       /// Image
            //       ClipRRect(
            //         borderRadius: BorderRadius.circular(16),
            //         child: Image.network(
            //           height: 60,
            //           item.product.galleries[0].imageUrl,
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       Expanded(
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               item.product.name,
            //               style: blackTextStyle.copyWith(
            //                 fontSize: 12,
            //               ),
            //               maxLines: 1,
            //               overflow: TextOverflow.ellipsis,
            //             ),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   '${item.quantity} item',
            //                   style: greyTextStyle.copyWith(
            //                     fontSize: 12,
            //                     fontWeight: medium,
            //                   ),
            //                   maxLines: 1,
            //                   overflow: TextOverflow.ellipsis,
            //                 ),
            //                 Text(
            //                   priceFormat(item.product.price * item.quantity),
            //                   style: blackTextStyle.copyWith(
            //                     fontSize: 12,
            //                   ),
            //                   maxLines: 1,
            //                   overflow: TextOverflow.ellipsis,
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   );
            // }),

            // const SpaceHeight(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dateFormat(transaction.createdAt),
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      transaction.transactionNumber,
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: transaction.paymentStatus == 'SUCCESS'
                        ? AppColor.green.withOpacity(0.2)
                        : AppColor.red.withOpacity(0.2),
                  ),
                  child: Text(
                    transaction.paymentStatus,
                    style: transaction.paymentStatus == 'SUCCESS'
                        ? greenTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium)
                        : redTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium),
                  ),
                ),
              ],
            ),
            const SpaceHeight(4),
            const Divider(color: AppColor.grey300),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      priceFormat(transaction.totalPrice),
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: transaction.paymentStatus != 'SUCCESS',
                  child: ElevatedButton(
                    onPressed: () {
                      // Ke Page Payment Url
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Pay Now',
                      style: whiteTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
