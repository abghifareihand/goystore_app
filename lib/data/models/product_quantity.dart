import 'product_response_model.dart';

class ProductQuantity {
  final Product product;
  int quantity;

  ProductQuantity({
    required this.product,
    this.quantity = 0,
  });
}