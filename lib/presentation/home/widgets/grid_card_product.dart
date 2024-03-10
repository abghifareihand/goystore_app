import 'package:flutter/material.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/formatter.dart';
import 'package:goystore_app/core/extensions/navigator.dart';
import 'package:goystore_app/data/models/product_response_model.dart';
import 'package:goystore_app/presentation/home/pages/detail_product_page.dart';

class GridCardProduct extends StatelessWidget {
  final Product product;
  const GridCardProduct({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        context.push(
          DetailProductPage(product: product),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.network(
                product.galleries[0].imageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SpaceHeight(4),
                  Text(
                    product.category.name,
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SpaceHeight(4),
                  Text(
                    priceFormat(product.price),
                    style: blackTextStyle.copyWith(
                      fontWeight: regular,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
