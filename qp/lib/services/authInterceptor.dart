import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'local_store_config.dart';


class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await HiveService.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
    debugPrint("Bearer token ----------------$token");
  }
}

