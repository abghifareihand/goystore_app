import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/components/loading_spinkit.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/presentation/home/widgets/search_cart_product.dart';

import '../bloc/products/products_bloc.dart';
import '../widgets/grid_card_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SpaceHeight(28),
          const SearchCartProduct(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Text(
              'Categories',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Text(
              'Products',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ),
          BlocBuilder<ProductsBloc, ProductsState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const LoadingSpinkit();
                },
                loading: () {
                  return const LoadingSpinkit();
                },
                loaded: (productResponse) {
                  if (productResponse.data.isEmpty) {
                    return const Center(
                      child: Text('No data Produc'),
                    );
                  }
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.70,
                    ),
                    itemCount: productResponse.data.length,
                    itemBuilder: (context, index) {
                      return GridCardProduct(
                        product: productResponse.data[index],
                      );
                    },
                  );
                },
                error: (message) {
                  return Center(
                    child: Text(message),
                  );
                },
              );
            },
          ),
          const SpaceHeight(50),
        ],
      ),
    );
  }
}
