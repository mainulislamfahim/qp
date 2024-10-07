import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:qp/app/model/login/login_model.dart';
import 'package:qp/app/model/post/post_model.dart';
import 'package:qp/app/model/registration/gender_model.dart';
import 'package:qp/app/model/registration/register_model.dart';
import 'package:qp/helper/log_printer.dart';
import '../services/authInterceptor.dart';
import 'api_endpoint.dart';

abstract class IApiService {
  /// Register
  Future<RegisterModel> register(
    String firstName,
    String lastName,
    String email,
    String phone,
    String password,
    String userRole,
    String gender,
    String day,
    String month,
    String year,
  );

  /// Login
  Future<LoginModel> login(String email, String password); // Post

  /// Post
  Future<PostModel> post(String pageNo, String pageSize); // Post
  /// Gender
  Future<GenderModel> gender();
}

class ApiServices implements IApiService {
  final Dio _dio;
  ApiServices()
      : _dio = Dio(BaseOptions(
          validateStatus: (statusCode) {
            if (statusCode == null) {
              return false;
            }
            if (statusCode == 422 || statusCode == 400) {
              // your http status code
              return true;
            } else {
              return statusCode >= 200 && statusCode < 300;
            }
          },
        )) {
    _dio.interceptors.add(AuthInterceptor());
  }

  /// Register
  @override
  Future<RegisterModel> register(
    String firstName,
    String lastName,
    String email,
    String phone,
    String password,
    String userRole,
    String gender,
    String day,
    String month,
    String year,
  ) async {
    final Map<String, dynamic> data = {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'phone': phone,
      'password': password,
      'user_role': userRole,
      'gender': gender,
      'day': day,
      'month': month,
      'year': year,
    };
    return _handleRequest<RegisterModel>(
        () => _dio.post(ApiEndpoint.register, data: data),
        (dynamic data) => RegisterModel.fromJson(data),
        'Registration');
  }

  /// Login
  @override
  Future<LoginModel> login(String email, String password) async {
    final Map<String, dynamic> data = {
      'email': email.toString(),
      'password': password.toString(),
    };
    return _handleRequest<LoginModel>(
        () => _dio.post(ApiEndpoint.login, data: data),
        (dynamic data) => LoginModel.fromJson(data),
        'Login');
  }

  /// Post
  @override
  Future<PostModel> post(String pageNo, String pageSize) async {
    return _handleRequest<PostModel>(
        () =>
            _dio.get('${ApiEndpoint.post}?pageNo=$pageNo&pageSize=$pageSize'),
        (dynamic data) => PostModel.fromJson(data),
        'Posts');
  }

  /// Gender
  @override
  Future<GenderModel> gender() async {
    return _handleRequest(() => _dio.get(ApiEndpoint.gender),
        (dynamic data) => GenderModel.fromJson(data), 'Gender');
  }
}

Future<T> _handleRequest<T>(Future<Response<dynamic>> Function() request,
    T Function(dynamic) mapper, String apiName) async {
  try {
    final response = await request();
    // Log.i('Print Status Code');
    // Log.i(response.statusCode);
    Log.i(response.data);
    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 422) {
      debugPrint('Api Name: $apiName');
      return mapper(response.data);
    } else {
      debugPrint('Api Name: $apiName');

      throw ApiException('Failed to load data: ${response.statusCode}',
          statusCode: response.statusCode!);
    }
  } catch (e) {
    debugPrint("API HANDLER ERROR $apiName:  ${e.toString()}");
    throw ApiException('Failed to load data: $e', statusCode: 500);
  }
}

// Custom exception class for API errors
class ApiException implements Exception {
  final String message;
  final int statusCode;

  ApiException(this.message, {this.statusCode = 500});
}
