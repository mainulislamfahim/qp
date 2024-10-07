import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/modules/Registration/controllers/registration_controller.dart';
import 'package:qp/app/modules/Registration/widget/birthday.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/sizedbox_extension.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/appbar_title.dart';
import '../../../../helper/global_button_without_gradient.dart';

class RegName extends StatelessWidget {
  const RegName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorName.white,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        surfaceTintColor: ColorName.white,
        title: appbarTitle(text: 'Create Account'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          60.height,
          Center(
            child: AppTextStyle(
              text: 'What\'s your name?',
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          5.height,
          const Center(
            child: AppTextStyle(
              text: 'Enter the name you use in your life.',
              color: ColorName.gray410,
              fontWeight: FontWeight.w500,
            ),
          ),
          20.height,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60.h,
                  width: Get.width / 2.5,
                  child: TextFormField(
                    controller: controller.firstname,
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.firstname.clear();
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
                10.width,
                SizedBox(
                  height: 60.h,
                  width: Get.width / 2.5,
                  child: TextFormField(
                    controller: controller.lastname,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.lastname.clear();
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
              ],
            ),
          ),
          20.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: globalButtonWithoutGradient(
              onTap: () {
                Get.to(() => const RegBirthday());
              },
              text: 'Next',
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ],
      ),
    );
  }
}
