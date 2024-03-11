import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/components/button.dart';
import 'package:goystore_app/core/components/dialog.dart';
import 'package:goystore_app/core/components/loading_spinkit.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/extensions/navigator.dart';
import 'package:goystore_app/data/models/request/checkout_request_model.dart';
import 'package:goystore_app/presentation/cart/bloc/cart/cart_bloc.dart';
import 'package:goystore_app/presentation/cart/widgets/list_card_product.dart';
import 'package:goystore_app/presentation/checkout/bloc/checkout/checkout_bloc.dart';
import 'package:goystore_app/presentation/checkout/widgets/checkout_card_payment.dart';
import 'package:goystore_app/presentation/checkout/widgets/checkout_card_product.dart';
import 'package:goystore_app/presentation/dashboard/pages/dashboard_page.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final TextEditingController _addressController = TextEditingController();
  List<Item> items = [];
  int totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        title: const Text('Checkout'),
        titleTextStyle: whiteTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const SizedBox.shrink();
                },
                loaded: (products) {
                  if (products.isEmpty) {
                    return const Center(
                      child: Text('No Product Checkout'),
                    );
                  }
                  items = products
                      .map(
                        (item) => Item(
                          id: item.product.id,
                          quantity: item.quantity,
                        ),
                      )
                      .toList();
                  final totalQuantity = products.fold(
                      0, (sum, product) => sum + product.quantity);
                  totalPrice = products.fold(
                      0,
                      (sum, product) =>
                          sum + product.product.price * product.quantity);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product Items',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      ListView.builder(
                        padding: const EdgeInsets.only(bottom: 24),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          final productItems = products[index];
                          return CheckoutCardProduct(product: productItems);
                        },
                      ),

                      Text(
                        'Payment',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),

                      /// Payment sumarry
                      CheckoutCardPayment(
                        totalItem: totalQuantity,
                        totalPrice: totalPrice,
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BlocConsumer<CheckoutBloc, CheckoutState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            error: (message) {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomDialog(
                    title: 'Checkout Failed',
                    message: message,
                  );
                },
              );
            },
            loaded: (data) {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                child: Button.primary(
                  onPressed: () {
                    final checkoutRequest = CheckoutRequestModel(
                      items: items,
                      totalPrice: totalPrice,
                      address: 'Andara Raya No. 25',
                    );
                    context
                        .read<CheckoutBloc>()
                        .add(CheckoutEvent.checkout(checkoutRequest));
                    context
                        .read<CheckoutBloc>()
                        .add(const CheckoutEvent.started());
                  },
                  label: 'Checkout Now',
                ),
              );
            },
            loading: () {
              return const LoadingSpinkit();
            },
          );
        },
      ),
    );
  }
}
