import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:qp/app/routes/app_pages.dart';
import 'package:qp/helper/handleException.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/repository/api_services.dart';
import 'package:qp/services/local_store_config.dart';

class LoginController extends GetxController {
  final obscureText = false.obs;

  final email = TextEditingController();
  final password = TextEditingController();

  /// Api Service
  final apiService = ApiServices();

  Future<void> login({required String email, required String password}) async {
    try {
      final response = await apiService.login(email, password);
      if (response.status == 200) {
        HiveService.deleteToken();
        HiveService.deleteRefreshToken();
        await HiveService.setToken(response.accessToken!);
        await HiveService.setRefreshToken(response.refreshToken!);
        await HiveService.setUserID(response.user!.id!);
        Get.snackbar('Login', response.message!);
        Get.offNamed(Routes.HOME);
      } else {
        Get.snackbar('Login', response.message!);
      }
    } catch (e) {
      handleException(e);
    }
  }

}
