import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/presentation/dashboard/cubit/navbar_cubit.dart';

class NavbarItem extends StatelessWidget {
  final int index;
  final String iconText;
  final String iconActive;
  final String iconDisable;

  const NavbarItem({
    super.key,
    required this.index,
    required this.iconText,
    required this.iconActive,
    required this.iconDisable,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<NavbarCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
            height: 4,
            decoration: BoxDecoration(
              color: context.watch<NavbarCubit>().state == index
                  ? AppColor.primary
                  : Colors.transparent,
              // jika isSelect true(dipilih) maka tampil warna primary(ungu) jika engga maka transparant
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
          const SpaceHeight(4),
          Image.asset(
            context.watch<NavbarCubit>().state == index
                ? iconActive
                : iconDisable,
            width: 24,
            height: 24,
          ),
          Text(
            iconText,
            style: blackTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          const SpaceHeight(4),
        ],
      ),
    );
  }
}
