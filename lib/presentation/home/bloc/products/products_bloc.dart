import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goystore_app/data/datasources/product_remote_datasource.dart';
import 'package:goystore_app/data/models/product_response_model.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(const _Initial()) {
    on<_GetProducts>((event, emit) async {
      emit(const _Loading());
      final result = await ProductRemoteDatasource().getProduct();
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data)),
      );
    });

    on<_GetProductByCategory>((event, emit) async {
      emit(const _Loading());
      final result = await ProductRemoteDatasource().getProductByCategory(event.categoryId);
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data)),
      );
    });
  }
}
