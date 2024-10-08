import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/routes/app_pages.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';

class HomeSelfStory extends StatelessWidget {
  const HomeSelfStory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      width: 110.w,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: Image.asset(
                Assets.images.chancal.path,
                height: 150.h,
                width: 100.w,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 35.w,
              bottom: 5.h,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.CREATE_STORY);
                },
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: ColorName.primaryColor,
                    border: Border.all(
                      color: ColorName.white,
                      width: 1.5.w,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 30,
                    color: ColorName.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
