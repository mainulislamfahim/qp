import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/modules/Registration/widget/password.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../helper/app_text_style.dart';
import '../../../../helper/appbar_title.dart';
import '../../../../helper/global_button_without_gradient.dart';
import '../controllers/registration_controller.dart';

class RegMobile extends StatelessWidget {
  const RegMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RegistrationController>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorName.white,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        surfaceTintColor: ColorName.white,
        title: appbarTitle(text: 'Mobile Number'),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          40.height,
          Center(
            child: AppTextStyle(
              text: 'Enter your Mobile Number',
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          5.height,
          const Center(
            child: AppTextStyle(
              text:
              'Enter the Mobile Number where you can be reached.\nNo one else will see this on your profile',
              color: ColorName.gray410,
              fontWeight: FontWeight.w500,
            ),
          ),
          20.height,
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: controller.phone,
              maxLength: 11, // adjust the length to accommodate the prefix text
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Mobile Number',
                prefixText: '+880', // set the prefix text
                prefixStyle: const TextStyle(color: Colors.black), // set the prefix text color
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
                Get.to(() => const RegPassword());
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
