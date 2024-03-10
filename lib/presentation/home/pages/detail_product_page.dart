import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:goystore_app/core/components/button.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/formatter.dart';
import 'package:goystore_app/data/models/product_response_model.dart';
import 'package:goystore_app/presentation/home/widgets/image_slider_product.dart';

class DetailProductPage extends StatefulWidget {
  final Product product;
  const DetailProductPage({
    super.key,
    required this.product,
  });

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  final CarouselController _controller = CarouselController();
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
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: AppColor.red,
                  child: Text(
                    '0',
                    style: whiteTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          /// Image
          ImageSliderProduct(
            imageUrls: widget.product.galleries
                .map((gallery) => gallery.imageUrl)
                .toList(),
            controller: _controller,
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
                  widget.product.name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SpaceHeight(16),
                Text(
                  widget.product.description,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                  textAlign: TextAlign.justify,
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
                priceFormat(widget.product.price),
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const SpaceWidth(12.0),
            Expanded(
              child: Button.primary(
                onPressed: () {},
                label: 'Add to Cart',
              ),
            )
          ],
        ),
      ),
    );
  }
}
