import 'package:get/get.dart';
import 'package:qp/helper/log_printer.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {

  void delayedFunction() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.toNamed(Routes.LOGIN);
    Log.w('Called');
  }

  @override
  void onInit() {
    delayedFunction();
    super.onInit();
  }

}
