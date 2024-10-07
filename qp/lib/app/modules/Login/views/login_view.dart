import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:qp/app/modules/splash/views/splash_view.dart';
import 'package:qp/app/routes/app_pages.dart';
import 'package:qp/gen/colors.gen.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/global_button_without_gradient.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../../../../gen/assets.gen.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        backgroundColor: ColorName.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                Assets.images.qpLogo1.path,
                height: 100,
                width: 80,
              ),
            ),
            5.height,
            AppTextStyle(
              text: 'Welcome to the Biggest Social\nNetwork in the World',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: ColorName.black.withOpacity(0.7),
            ),
            15.height,
            AppTextStyle(
              text: 'Login here',
              fontSize: 22.sp,
              fontWeight: FontWeight.w500,
              color: ColorName.primaryColor,
            ),
            15.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: TextFormField(
                controller: controller.email,
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: const Color(0xFFF5FCF9),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    // default border color
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: ColorName.primaryColor),
                    // primary color on focus
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                ),
                keyboardType: TextInputType.text,
                onSaved: (email) {
                  // Save it
                },
              ),
            ),
            10.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Obx(() {
                return TextFormField(
                  controller: controller.password,
                  obscureText: controller.obscureText.value,
                  decoration: InputDecoration(
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
                    hintText: 'Password',
                    filled: true,
                    fillColor: const Color(0xFFF5FCF9),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      // default border color
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: ColorName.primaryColor),
                      // primary color on focus
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
            3.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Align(
                alignment: Alignment.centerRight,
                child: AppTextStyle(
                  text: 'Forgot Password?',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorName.primaryColor,
                ),
              ),
            ),
            30.height,
            Padding(
              padding: EdgeInsets.all(8.r),
              child: globalButtonWithoutGradient(
                onTap: () {
                  if(controller.email.text.isNotEmpty && controller.password.text.isNotEmpty){
                    controller.login(email:  controller.email.text, password:  controller.password.text);
                  }else{
                    Get.snackbar('Login', 'All fields required');
                  }
                },
                text: 'Sign In',
                height: 60.h,
                width: 360.w,
                fontSize: 20.sp,
                fontWeight:FontWeight.w600,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            InkWell(
              onTap: (){
                Get.toNamed(Routes.REGISTRATION);
              },
              child: Padding(
                padding: EdgeInsets.all(8.r),
                child: AppTextStyle(text: 'Create New Account', fontSize: 16.sp,),
              ),
            ),
          ],
        ));
  }
}
