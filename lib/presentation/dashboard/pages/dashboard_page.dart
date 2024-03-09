import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/constants/images.dart';
import 'package:goystore_app/presentation/dashboard/cubit/navbar_cubit.dart';
import 'package:goystore_app/presentation/dashboard/widgets/navbar_item.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const Center(
        child: Text('Home'),
      ),
      const Center(
        child: Text('Transaction'),
      ),
      const Center(
        child: Text('Account'),
      ),
    ];
    return BlocProvider(
      create: (context) => NavbarCubit(),
      child: BlocBuilder<NavbarCubit, int>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                pages[state],
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NavbarItem(
                          index: 0,
                          iconText: 'Home',
                          iconActive: Images.iconHome,
                          iconDisable: Images.iconHomeGrey,
                        ),
                        NavbarItem(
                          index: 1,
                          iconText: 'Order',
                          iconActive: Images.iconOrder,
                          iconDisable: Images.iconOrderGrey,
                        ),
                        NavbarItem(
                          index: 2,
                          iconText: 'Account',
                          iconActive: Images.iconProfile,
                          iconDisable: Images.iconProfileGrey,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
