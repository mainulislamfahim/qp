import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/modules/Home/controllers/home_controller.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

class HomePostSection extends StatelessWidget {
  const HomePostSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: Image.asset(
            Assets.images.chancal.path,
            height: 60.h,
            width: 55.w,
            fit: BoxFit.fill,
          ),
        ),
        10.width,
        SizedBox(
          height: 50.h,
          width: 225.w,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'What’s on your mind, Shanto?',
              filled: true,
              fillColor: ColorName.gray70.withOpacity(0.5),
              enabledBorder: OutlineInputBorder(
                borderSide:
                const BorderSide(color: Colors.transparent),
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
            onSaved: (value) {
              // Save it
            },
          ),
        ),
        10.width,
        Container(
          height: 50.h,
          width: 40.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: ColorName.gray70.withOpacity(0.5),
          ),
          child: Center(
              child: Image.asset(
                Assets.images.image.path,
                height: 25.h,
                width: 25.w,
              )),
        )
      ],
    );
  }
}
