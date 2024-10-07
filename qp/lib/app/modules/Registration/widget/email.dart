import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/modules/Registration/controllers/registration_controller.dart';
import 'package:qp/app/modules/Registration/widget/mobile.dart';
import 'package:qp/helper/sizedbox_extension.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/app_text_style.dart';
import '../../../../helper/appbar_title.dart';
import '../../../../helper/global_button_without_gradient.dart';

class RegEmail extends StatelessWidget {
  const RegEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RegistrationController>();
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        surfaceTintColor: ColorName.white,
        title: appbarTitle(text: 'Email Address'),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          40.height,
          Center(
            child: AppTextStyle(
              text: 'Enter your Email address',
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          5.height,
          const Center(
            child: AppTextStyle(
              text:
                  'Enter the email address where you can be reached.\nNo one else will see this on your profile',
              color: ColorName.gray410,
              fontWeight: FontWeight.w500,
            ),
          ),
          20.height,
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                hintText: 'Email address',
                suffixIcon: InkWell(
                  onTap: () {
                    controller.email.clear();
                  },
                  child: const Icon(
                    Icons.cancel,
                    color: ColorName.gray410,
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: ColorName.primaryColor),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: ColorName.primaryColor),
                ),
              ),
            ),
          ),
          10.height,
          Padding(
            padding: const EdgeInsets.all(10),
            child: globalButtonWithoutGradient(
              onTap: () {
                Get.to(() => const RegMobile());
              },
              text: 'Next',
              borderRadius: BorderRadius.circular(10.r),
            ),
          )
        ],
      ),
    );
  }
}
