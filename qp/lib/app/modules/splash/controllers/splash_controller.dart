import 'package:get/get.dart';
import 'package:qp/app/modules/Home/controllers/home_controller.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/services/local_store_config.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  void checkPreviousLogin() async {
    final token = await HiveService.getToken();
    final userID = await HiveService.getUserID();
    if (token == '' || userID == '' || token == null || userID == null) {
      delayedFunction();
    } else {
      Get.put(HomeController());
      Get.toNamed(Routes.HOME);
    }
  }

  void delayedFunction() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.toNamed(Routes.LOGIN);
  }

  @override
  void onInit() {
    checkPreviousLogin();
    super.onInit();
  }
}
