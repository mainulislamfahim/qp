import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
              initialValue: 'Email address',
              maxLength: 1,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {},
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
