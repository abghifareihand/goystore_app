import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../models/product_response_model.dart';

class ProductRemoteDatasource {
  Future<Either<String, ProductResponseModel>> getProduct() async {
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/products'),
      headers: headers,
    );

    debugPrint('Response Get Products : ${response.body}');

    if (response.statusCode == 200) {
      return Right(ProductResponseModel.fromJson(response.body));
    } else {
      final errorMessage = jsonDecode(response.body)['message'];
      return Left(errorMessage);
    }
  }

  Future<Either<String, ProductResponseModel>> getProductByCategory(int categoryId) async {
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/products?categories=$categoryId'),
      headers: headers,
    );

    debugPrint('Response Get Product By Category  : ${response.body}');

    if (response.statusCode == 200) {
      return Right(ProductResponseModel.fromJson(response.body));
    } else {
      final errorMessage = jsonDecode(response.body)['message'];
      return Left(errorMessage);
    }
  }
}
