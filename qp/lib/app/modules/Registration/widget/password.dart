import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/modules/Registration/controllers/registration_controller.dart';
import 'package:qp/app/routes/app_pages.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../helper/app_text_style.dart';
import '../../../../helper/appbar_title.dart';
import '../../../../helper/global_button_without_gradient.dart';

class RegPassword extends StatelessWidget {
  const RegPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RegistrationController>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorName.white,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        surfaceTintColor: ColorName.white,
        title: appbarTitle(text: 'Password'),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          40.height,
          Center(
            child: AppTextStyle(
              text: 'Enter your Password',
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          5.height,
          const Center(
            child: AppTextStyle(
              text:
                  'Password must contain at least one uppercase letter,\none lowercase letter, one number, and one symbol.',
              color: ColorName.gray410,
              fontWeight: FontWeight.w500,
            ),
          ),
          20.height,
          Padding(
            padding: const EdgeInsets.all(10),
            child: Obx(() {
              return TextFormField(
                controller: controller.password,
                obscureText: controller.obscureText.value,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      controller.obscureText.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      controller.obscureText.value =
                          !controller.obscureText.value;
                    },
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: ColorName.primaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                ),
                keyboardType: TextInputType.text,
                onSaved: (email) {
                  // Save it
                },
              );
            }),
          ),
          10.height,
          Padding(
            padding: const EdgeInsets.all(10),
            child: globalButtonWithoutGradient(
              onTap: () {
                controller.register(
                  controller.firstname.text,
                  controller.lastname.text,
                  controller.email.text,
                  controller.phone.text,
                  controller.password.text,
                  '1',
                  controller.selectedGenderId,
                  controller.selectDate.value.day.toString(),
                  controller.selectDate.value.month.toString(),
                  controller.selectDate.value.year.toString(),
                );
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
