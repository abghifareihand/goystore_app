
import 'package:flutter/material.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Icon(
            Icons.shopping_bag_outlined,
            color: AppColor.grey200,
            size: 52,
          ),
          const SpaceHeight(16),
          Text(
            'Keranjang Kamu Masih Kosong',
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Yuk, isi dengan barang-barang impianmu!',
            style: greyTextStyle.copyWith(
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
