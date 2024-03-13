import 'package:flutter/material.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:shimmer/shimmer.dart';

class CategoryShimmerWidget extends StatelessWidget {
  const CategoryShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.white,
            ),
            child: Center(
              child: Container(
                height: 12,
                width: 80,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 10);
      },
    );
  }
}
