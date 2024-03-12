import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/extensions/navigator.dart';
import 'package:goystore_app/presentation/cart/bloc/cart/cart_bloc.dart';
import 'package:goystore_app/presentation/cart/pages/cart_page.dart';

class SearchCartProduct extends StatelessWidget {
  const SearchCartProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Back
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
        ),
    
        /// Cart
        Stack(
          children: [
            InkWell(
              onTap: () {
                context.push(const CartPage());
              },
              child: Container(
                margin: const EdgeInsets.only(
                  left: 16,
                  right: 4,
                ),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                ),
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
    );
  }
}
