import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/modules/Registration/widget/name.dart';
import 'package:qp/gen/assets.gen.dart';
import 'package:qp/gen/colors.gen.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/appbar_title.dart';
import 'package:qp/helper/global_button_without_gradient.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        surfaceTintColor: ColorName.white,
        title: appbarTitle(text: 'Create Account'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                Assets.images.reg.path,
                height: 330.h,
                width: 220.w,
              ),
            ),
            20.height,
            AppTextStyle(
              text: 'Join Quantum possibilities',
              fontSize: 20.sp,
            ),
            10.height,
            const AppTextStyle(
              text: 'We’ll help you\ncreate a new account in a few easy steps.',
              color: ColorName.gray410,
            ),
            30.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: globalButtonWithoutGradient(
                onTap: () {
                  Get.to(() => const RegName());
                },
                text: 'Next',
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
