import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/modules/Registration/controllers/registration_controller.dart';
import 'package:qp/app/modules/Registration/widget/gender.dart';
import 'package:qp/gen/colors.gen.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../../../../helper/appbar_title.dart';
import '../../../../helper/global_button_without_gradient.dart';

class RegBirthday extends StatelessWidget {
  const RegBirthday({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorName.white,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        surfaceTintColor: ColorName.white,
        title: appbarTitle(text: 'Birthday'),
        centerTitle: false,
      ),
      body: Obx(() {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              40.height,
              Center(
                child: AppTextStyle(
                  text: 'What’s your birthday?',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              5.height,
              const Center(
                child: AppTextStyle(
                  text:
                  'Choose your date of birth.\nYou can always make this private later.',
                  color: ColorName.gray410,
                  fontWeight: FontWeight.w500,
                ),
              ),
              20.height,
              SizedBox(
                height: 200.h,
                child: DatePickerWidget(
                  looping: false,
                  firstDate: DateTime(1950, 1, 1),
                  dateFormat:
                      // "MM-dd(E)",
                      "dd/MMMM/yyyy",
                  locale: DatePicker.localeFromString('en'),
                  onChange: (DateTime newDate, _) {
                    controller.selectDate.value = newDate;
                  },
                  pickerTheme: const DateTimePickerTheme(
                    backgroundColor: Colors.transparent,
                    itemTextStyle: TextStyle(color: Colors.black, fontSize: 19),
                    dividerColor: Colors.black,
                    dividerThickness: 3,
                    diameterRatio: 3,
                    dividerSpacing: 10,
                    squeeze: 0.7,
                  ),
                ),
              ),
              AppTextStyle(
                text:
                    '${controller.calculateAge(controller.selectDate.value)} years old',
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
              40.height,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: globalButtonWithoutGradient(
                  onTap: () {
                    Get.to(() => const RegGender());
                  },
                  text: 'Next',
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
