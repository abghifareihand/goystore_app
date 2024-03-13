import 'package:flutter/material.dart';
import 'package:goystore_app/core/constants/colors.dart';

class CategoryCard extends StatelessWidget {
  final bool isSelected;
  final String categoryName;
  final Function() onTap;

  const CategoryCard({
    super.key,
    required this.isSelected,
    required this.categoryName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? AppColor.primary : AppColor.grey200,
        ),
        child: Center(
          child: Text(
            categoryName,
            style: isSelected
                ? whiteTextStyle.copyWith(fontWeight: medium)
                : greyTextStyle.copyWith(fontWeight: medium),
          ),
        ),
      ),
    );
  }
}
