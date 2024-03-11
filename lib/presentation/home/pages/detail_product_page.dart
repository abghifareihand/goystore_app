import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/components/button.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/formatter.dart';
import 'package:goystore_app/core/extensions/navigator.dart';
import 'package:goystore_app/core/extensions/screen.dart';
import 'package:goystore_app/data/models/product_quantity.dart';
import 'package:goystore_app/data/models/product_response_model.dart';
import 'package:goystore_app/presentation/cart/bloc/cart/cart_bloc.dart';
import 'package:goystore_app/presentation/cart/pages/cart_page.dart';
import 'package:goystore_app/presentation/home/widgets/image_gallery_product.dart';

class DetailProductPage extends StatelessWidget {
  final Product product;
  const DetailProductPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  context.push(const CartPage());
                },
                icon: const Icon(
                  Icons.shopping_bag,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const SizedBox.shrink();
                      },
                      loaded: (products) {
                        int totalQuantity = 0;
                        for (var cart in products) {
                          totalQuantity += cart.quantity;
                        }
                        if (totalQuantity == 0) {
                          return const SizedBox.shrink();
                        }
                        return CircleAvatar(
                          radius: 10,
                          backgroundColor: AppColor.red,
                          child: Text(
                            totalQuantity.toString(),
                            style: whiteTextStyle.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          /// Image slider
          // ImageSliderProduct(
          //   imageUrls: widget.product.galleries
          //       .map((gallery) => gallery.imageUrl)
          //       .toList(),
          //   controller: _controller,
          // ),

          /// Image no slider
          ClipRRect(
            child: Image.network(
              product.galleries[0].imageUrl,
              width: context.screenWidth,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SpaceHeight(16),
                Text(
                  'Description',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SpaceHeight(8),
                Text(
                  product.description,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                  textAlign: TextAlign.justify,
                ),

                /// Gallery
                ImageGalleryProduct(
                  galleries: product.galleries,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                priceFormat(product.price),
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const SpaceWidth(12.0),
            Expanded(
              child: Button.primary(
                onPressed: () {
                  final productItems = ProductQuantity(
                    product: product,
                    quantity: 1,
                  );
                  context
                      .read<CartBloc>()
                      .add(CartEvent.addToCart(productItems));
                },
                label: 'Add to Cart',
              ),
            )
          ],
        ),
      ),
    );
  }
}
