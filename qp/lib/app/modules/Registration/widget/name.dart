import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qp/app/modules/Login/views/login_view.dart';
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
                    height: 60.h,width: Get.width / 2.5,
                    child: TextFormField(
                      initialValue: 'First Name',
                      maxLength: 1,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: (){

                          },
                          child: const Icon(
                            Icons.cancel,
                            color: ColorName.gray410,
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF6200EE)),
                        ),
                      ),
                    ),
                  ),
                  10.width,
                  SizedBox(
                    height: 60.h,width: Get.width / 2.5,
                    child: TextFormField(
                      initialValue: 'Last Name',
                      maxLength: 1,
                      decoration:  InputDecoration(
                        suffixIcon: InkWell(
                          onTap: (){},
                          child: const Icon(
                            Icons.cancel,
                            color: ColorName.gray410,
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF6200EE)),
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
      ),
    );
  }
}
