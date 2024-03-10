import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/extensions/screen.dart';

class ImageSliderProduct extends StatefulWidget {
  final List<String> imageUrls;
  final CarouselController controller;
  const ImageSliderProduct(
      {super.key, required this.imageUrls, required this.controller});

  @override
  State<ImageSliderProduct> createState() => _ImageSliderProductState();
}

class _ImageSliderProductState extends State<ImageSliderProduct> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: widget.imageUrls
              .map(
                (imageUrl) => ClipRRect(
                  child: Image.network(
                    imageUrl,
                    width: context.screenWidth,
                    fit: BoxFit.cover,
                  ),
                ),
              )
              .toList(),
          carouselController: widget.controller,
          options: CarouselOptions(
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imageUrls.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => widget.controller.animateToPage(entry.key),
                child: Container(
                  width: _currentIndex == entry.key ? 20.0 : 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: _currentIndex == entry.key
                        ? AppColor.primary
                        : AppColor.grey200,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
