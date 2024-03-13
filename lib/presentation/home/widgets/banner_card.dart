import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/images.dart';
import 'package:goystore_app/core/extensions/screen.dart';

class BannerCard extends StatefulWidget {
  const BannerCard({
    super.key,
  });

  @override
  State<BannerCard> createState() => _BannerCardState();
}

class _BannerCardState extends State<BannerCard> {
  int _current = 0;
  final List<String> imagesBanner = [
    'https://images.tokopedia.net/img/cache/1208/NsjrJu/2024/2/28/63aa8f58-e3b1-4093-8713-c650124e516c.jpg.webp?ect=4g',
    'https://images.tokopedia.net/img/cache/1208/NsjrJu/2024/3/8/a90f665b-d8b8-4188-92b8-48daf15db8e1.jpg.webp?ect=4g',
    'https://images.tokopedia.net/img/cache/1208/NsjrJu/2024/3/8/344dd7e8-bbc8-451d-aec9-d190ab5a9238.jpg.webp?ect=4g',
    'https://images.tokopedia.net/img/cache/1208/NsjrJu/2024/3/13/cff03b5c-116c-4961-82dd-dd2c1ba36cdc.jpg.webp?ect=4g',
  ];

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: imagesBanner.length,
          itemBuilder: (context, index, _) {
            final banner = imagesBanner[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: FadeInImage.assetNetwork(
                  placeholder: Images.placeholder,
                  image: banner,
                  width: context.screenWidth,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 343 / 206,
            viewportFraction: 1,
            height: 150,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        const SpaceHeight(16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imagesBanner.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 20.0 : 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: _current == entry.key
                      ? AppColor.primary
                      : AppColor.grey200,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
