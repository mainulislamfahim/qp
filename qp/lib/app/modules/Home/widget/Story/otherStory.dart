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
      height: 200.h,
      width: Get.width - 120.w,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (_, item) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
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
                    left: 40.w,
                    // right: 60.w,
                    bottom: 20.h,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: ColorName.primaryColor,
                              width: 1.5.w,
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
