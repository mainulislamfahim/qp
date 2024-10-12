import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../app/routes/app_pages.dart';
import '../repository/api_endpoint.dart';
import 'local_store_config.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await HiveService.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Token expired or invalid, log out the user
      await HiveService.deleteToken();
      await HiveService.deleteUserID();

      // Redirect to login screen
      Get.offAllNamed(Routes.LOGIN);
      Get.snackbar('Session Expired', 'Please log in again to continue.');
    }

    return handler.next(err); // Forward the error
  }
}

