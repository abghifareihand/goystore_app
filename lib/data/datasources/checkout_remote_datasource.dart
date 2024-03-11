import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:goystore_app/core/constants/variables.dart';
import 'package:goystore_app/data/datasources/auth_local_datasource.dart';
import 'package:goystore_app/data/models/request/checkout_request_model.dart';
import 'package:http/http.dart' as http;

import '../models/checkout_response_model.dart';

class CheckoutRemoteDatasource {
  Future<Either<String, CheckoutResponseModel>> checkout(CheckoutRequestModel checkoutRequest) async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/checkout'),
      headers: headers,
      body: checkoutRequest.toJson(),
    );

    debugPrint('Request Checkout ${checkoutRequest.toJson()}');
    debugPrint('Response Checkout ${response.body}');

    if (response.statusCode == 200) {
       return Right(CheckoutResponseModel.fromJson(response.body));
    } else {
      final errorMessage = jsonDecode(response.body)['message'];
      return Left(errorMessage);
    }
  }
}