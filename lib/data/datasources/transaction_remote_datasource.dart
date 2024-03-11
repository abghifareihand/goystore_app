import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../models/transaction_response_model.dart';
import 'auth_local_datasource.dart';

class TransactionRemoteDatasource {
  Future<Either<String, TransactionResponseModel>> getTransaction() async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
       'Authorization': 'Bearer $token',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/transactions'),
      headers: headers,
    );

    debugPrint('Response Get Transactions : ${response.body}');

    if (response.statusCode == 200) {
      return Right(TransactionResponseModel.fromJson(response.body));
    } else {
      final errorMessage = jsonDecode(response.body)['message'];
      return Left(errorMessage);
    }
  }
}
