part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.started() = _Started;
  const factory ProductsEvent.getProducts() = _GetProducts;
  const factory ProductsEvent.getProductByCategory(int categoryId) = _GetProductByCategory;
}