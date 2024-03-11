import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/formatter.dart';
import 'package:goystore_app/data/models/product_quantity.dart';
import 'package:goystore_app/presentation/cart/bloc/cart/cart_bloc.dart';

class ListCardProduct extends StatelessWidget {
  final ProductQuantity productItems;

  const ListCardProduct({
    super.key,
    required this.productItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          /// Image
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              height: 80,
              productItems.product.galleries[0].imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SpaceWidth(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productItems.product.name,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  productItems.product.category.name,
                  style: greyTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    /// Price
                    Expanded(
                      child: Text(
                        priceFormat(productItems.product.price),
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    /// Qty
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context
                                .read<CartBloc>()
                                .add(CartEvent.removeToCart(productItems));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColor.grey400,
                                width: 2,
                              ),
                            ),
                            child: Icon(
                              productItems.quantity == 1
                                  ? Icons.delete
                                  : Icons.remove,
                              size: 20,
                              color: AppColor.grey400,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 32.0,
                          child: Center(
                            child: Text(
                              productItems.quantity.toString(),
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: medium,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context
                                .read<CartBloc>()
                                .add(CartEvent.addToCart(productItems));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColor.grey400,
                                width: 2,
                              ),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 20,
                              color: AppColor.grey400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
