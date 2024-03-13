import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:goystore_app/core/constants/variables.dart';
import 'package:goystore_app/data/datasources/auth_local_datasource.dart';
import 'package:goystore_app/data/models/request/user_request_model.dart';
import 'package:http/http.dart' as http;

import '../models/user_response_model.dart';

class UserRemoteDatasource {
  Future<Either<String, UserResponseModel>> getUser() async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/user'),
      headers: headers,
    );

    debugPrint('Response Get User : ${response.body}');

    if (response.statusCode == 200) {
      return Right(UserResponseModel.fromJson(response.body));
    } else {
      final errorMessage = jsonDecode(response.body)['message'];
      return Left(errorMessage);
    }
  }

  Future<Either<String, UserResponseModel>> updateUser(UserRequestModel userRequest) async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/user'),
      headers: headers,
      body: userRequest.toJson(),
    );

    debugPrint('Response Update User : ${response.body}');

    if (response.statusCode == 200) {
      return Right(UserResponseModel.fromJson(response.body));
    } else {
      final errorMessage = jsonDecode(response.body)['message'];
      return Left(errorMessage);
    }
  }
}
