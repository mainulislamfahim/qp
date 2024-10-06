import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:qp/app/modules/Login/views/login_view.dart';
import 'package:qp/app/modules/Registration/controllers/registration_controller.dart';
import 'package:qp/app/modules/Registration/widget/email.dart';
import 'package:qp/gen/colors.gen.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/global_button_without_gradient.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../../../../helper/appbar_title.dart';

class RegGender extends StatelessWidget {
  const RegGender({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        surfaceTintColor: ColorName.white,
        title: appbarTitle(text: 'Gender'),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          40.height,
          Center(
            child: AppTextStyle(
              text: 'What\'s your gender',
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          5.height,
          const Center(
            child: AppTextStyle(
              text:
                  'You can change who sees your gender on your profile later.',
              color: ColorName.gray410,
              fontWeight: FontWeight.w500,
            ),
          ),
          20.height,
          Obx(
            () => Center(
              child: RadioGroup<String>.builder(
                direction: Axis.vertical,
                groupValue: controller.verticalGroupValue.value,
                horizontalAlignment: MainAxisAlignment.spaceAround,
                activeColor: ColorName.primaryColor,
                onChanged: (value) =>
                    controller.verticalGroupValue.value = value ?? '',
                items: controller.status,
                textStyle: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
                itemBuilder: (item) => RadioButtonBuilder(
                  item,
                ),
              ),
            ),
          ),
          40.height,
          Padding(
            padding: const EdgeInsets.all(10),
            child: globalButtonWithoutGradient(onTap: (){
              Get.to(()=> const RegEmail());
            }, text: 'Next', borderRadius: BorderRadius.circular(10.r),),
          )
        ],
      ),
    );
  }
}
