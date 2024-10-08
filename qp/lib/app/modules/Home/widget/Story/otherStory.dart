import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';

class HomeOtherStory extends StatelessWidget {
  const HomeOtherStory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      width: Get.width - 120.w,
      child: ListView.builder(
        padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (_, item) {
            return Padding(
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
                    left: 38.w,
                    // right: 60.w,
                    bottom: 5.h,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: ColorName.white,
                              width: 2.w,
                            )),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              Assets.images.chancal.path),
                          radius: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
