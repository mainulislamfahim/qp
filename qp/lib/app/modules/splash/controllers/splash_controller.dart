import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:qp/app/modules/Home/controllers/home_controller.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/services/local_store_config.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  void checkPreviousLogin() async {
    final token = await HiveService.getToken();
    final userID = await HiveService.getUserID();

    if (token == '' || userID == '' || token == null || userID == null) {
      Get.offNamed(Routes.LOGIN);
    } else {
      bool tokenValid = checkTokenValidity(token);
      if (tokenValid) {
        Get.put(HomeController());
        Get.offNamed(Routes.HOME);
      } else {
        Get.offNamed(Routes.LOGIN);
      }
    }
  }

  bool checkTokenValidity(String token) {
    final decodedToken = JwtDecoder.decode(token);
    final expirationTime = decodedToken['exp'] * 1000; // Convert to milliseconds
    final currentTime = DateTime.now().millisecondsSinceEpoch;

    return currentTime < expirationTime; // Check if token is still valid
  }


  void delayedFunction() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed(Routes.LOGIN);
  }

  @override
  void onInit() {
    checkPreviousLogin();
    super.onInit();
  }
}
