import 'package:flutter/material.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/formatter.dart';

class CheckoutCardPayment extends StatelessWidget {
  final int totalItem;
  final int totalPrice;
  const CheckoutCardPayment({
    super.key,
    required this.totalItem,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      padding: const EdgeInsets.all(20),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Quantity',
                style: greyTextStyle.copyWith(),
              ),
              Text(
                '$totalItem Items',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ],
          ),
          const SpaceHeight(4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Price',
                style: greyTextStyle.copyWith(),
              ),
              Text(
                priceFormat(totalPrice),
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
