import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:qp/app/routes/app_pages.dart';
import 'package:qp/gen/assets.gen.dart';
import 'package:qp/helper/appbar_title.dart';
import 'package:qp/helper/label_with_title_view_all.dart';
import 'package:qp/helper/loading_animation_widget.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
                Assets.images.qpLogo1.path,
                height: 70,
                width: 60,
              )
          ),
          10.height,
          loadingAnimationWidget(),

        ],
      ),
    );
  }
}
