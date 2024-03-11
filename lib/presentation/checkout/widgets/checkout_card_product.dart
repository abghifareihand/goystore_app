import 'package:flutter/material.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/formatter.dart';
import 'package:goystore_app/data/models/product_quantity.dart';

class CheckoutCardProduct extends StatelessWidget {
  final ProductQuantity product;
  const CheckoutCardProduct({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
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
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(product.product.galleries[0].imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.product.name,
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  priceFormat(product.product.price),
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Text(
            '${product.quantity} Items',
            style: blackTextStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
