import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/components/loading_spinkit.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/presentation/home/bloc/categories/categories_bloc.dart';
import 'package:goystore_app/presentation/home/widgets/banner_card.dart';
import 'package:goystore_app/presentation/home/widgets/category_card.dart';
import 'package:goystore_app/presentation/home/widgets/search_cart_product.dart';
import 'package:goystore_app/presentation/home/widgets/shimmer/category_shimmer_widget.dart';
import 'package:goystore_app/presentation/home/widgets/shimmer/product_shimmer_widget.dart';

import '../bloc/products/products_bloc.dart';
import '../widgets/grid_card_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          const SpaceHeight(16),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: SearchCartProduct(),
          ),
          const BannerCard(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 20,
            ),
            child: Text(
              'Categories',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            height: 36,
            child: BlocBuilder<CategoriesBloc, CategoriesState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const CategoryShimmerWidget();
                  },
                  loading: () {
                    return const CategoryShimmerWidget();
                  },
                  loaded: (responseModel) {
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: responseModel.data.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return CategoryCard(
                            isSelected: indexCategory == 0,
                            categoryName: 'All Product',
                            onTap: () {
                              setState(() {
                                indexCategory = 0;
                                context
                                    .read<ProductsBloc>()
                                    .add(const ProductsEvent.getProducts());
                              });
                            },
                          );
                        } else {
                          final categoryIndex = index - 1;
                          return CategoryCard(
                            isSelected: indexCategory == index,
                            categoryName:
                                responseModel.data[categoryIndex].name,
                            onTap: () {
                              setState(() {
                                indexCategory = index;
                                context.read<ProductsBloc>().add(
                                    ProductsEvent.getProductByCategory(
                                        responseModel.data[categoryIndex].id));
                              });
                            },
                          );
                        }
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 20,
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
                  return const ProductShimmerWidget();
                },
                loading: () {
                  return const ProductShimmerWidget();
                },
                loaded: (productResponse) {
                  if (productResponse.data.isEmpty) {
                    return const Center(
                      child: Text('No data Product'),
                    );
                  }
                  return GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
