import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goystore_app/data/models/product_quantity.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const _Loaded([])) {
    on<_AddToCart>((event, emit) async {
      final currentState = state as _Loaded;
      final index = currentState.products.indexWhere(
          (element) => element.product.id == event.productItems.product.id);
      if (index >= 0) {
        currentState.products[index].quantity += 1;
        emit(const _Loading());
        emit(_Loaded(currentState.products));
      } else {
        emit(_Loaded([...currentState.products, event.productItems]));
      }
    });

    on<_RemoveToCart>((event, emit) {
      final currentState = state as _Loaded;
      final index = currentState.products.indexWhere(
          (element) => element.product.id == event.productItems.product.id);

      if (index >= 0) {
        if (currentState.products[index].quantity > 1) {
          // Kurangi jumlah produk jika jumlahnya lebih dari 1
          currentState.products[index].quantity -= 1;
          emit(const _Loading());
          emit(_Loaded([...currentState.products]));
        } else {
          // Jika jumlah produk sudah 1, maka hapus produk dari keranjang
          final updateCart = [...currentState.products];
          updateCart.removeWhere(
              (productQuantity) => productQuantity == event.productItems);

          // Mengeluarkan state baru dengan produk yang telah dihapus
          emit(_Loaded(updateCart));
        }
      }
    });

    on<_Started>((event, emit) {
      emit(const _Loading());
      emit(const _Loaded([]));
    });
  }
}
