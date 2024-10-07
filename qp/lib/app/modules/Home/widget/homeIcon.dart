import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/modules/Home/controllers/home_controller.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              controller.isHomeSelected.value = true;
              controller.isVideoSelected.value = false;
              controller.isPeopleSelected.value = false;
              controller.isNotificationSelected.value = false;
              controller.isCartSelected.value = false;
              controller.isBookmarkSelected.value = false;
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.isHomeSelected.value
                    ? ColorName.gray70
                    : ColorName.white,
              ),
              child: Image.asset(
                Assets.images.home.path,
                height: 20.h,
                width: 20.w,
                color: ColorName.primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.isHomeSelected.value = false;
              controller.isVideoSelected.value = true;
              controller.isPeopleSelected.value = false;
              controller.isNotificationSelected.value = false;
              controller.isCartSelected.value = false;
              controller.isBookmarkSelected.value = false;
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.isVideoSelected.value
                    ? ColorName.gray70
                    : ColorName.white,
              ),
              child: Image.asset(
                Assets.images.video.path,
                height: 20.h,
                width: 20.w,
                color: ColorName.primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.isHomeSelected.value = false;
              controller.isVideoSelected.value = false;
              controller.isPeopleSelected.value = true;
              controller.isNotificationSelected.value = false;
              controller.isCartSelected.value = false;
              controller.isBookmarkSelected.value = false;
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.isPeopleSelected.value
                    ? ColorName.gray70
                    : ColorName.white,
              ),
              child: Image.asset(
                Assets.images.people.path,
                height: 20.h,
                width: 20.w,
                color: ColorName.primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.isHomeSelected.value = false;
              controller.isVideoSelected.value = false;
              controller.isPeopleSelected.value = false;
              controller.isNotificationSelected.value = true;
              controller.isCartSelected.value = false;
              controller.isBookmarkSelected.value = false;
            },
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: controller.isNotificationSelected.value
                      ? ColorName.gray70
                      : ColorName.white,
                ),
                child: Badge.count(
                  count: 9,
                  backgroundColor: ColorName.primaryColor,
                  child: Image.asset(
                    Assets.images.notification.path,
                    height: 20.h,
                    width: 20.w,
                    color: ColorName.primaryColor,
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              controller.isHomeSelected.value = false;
              controller.isVideoSelected.value = false;
              controller.isPeopleSelected.value = false;
              controller.isNotificationSelected.value = false;
              controller.isCartSelected.value = true;
              controller.isBookmarkSelected.value = false;
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.isCartSelected.value
                    ? ColorName.gray70
                    : ColorName.white,
              ),
              child: Badge.count(
                count: 3,
                backgroundColor: ColorName.primaryColor,
                child: Image.asset(
                  Assets.images.cart.path,
                  height: 20.h,
                  width: 20.w,
                  color: ColorName.primaryColor,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.isHomeSelected.value = false;
              controller.isVideoSelected.value = false;
              controller.isPeopleSelected.value = false;
              controller.isNotificationSelected.value = false;
              controller.isCartSelected.value = false;
              controller.isBookmarkSelected.value = true;
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.isBookmarkSelected.value
                    ? ColorName.gray70
                    : ColorName.white,
              ),
              child: Image.asset(
                Assets.images.bookmark.path,
                height: 20.h,
                width: 20.w,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle tap for avatar
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(Assets.images.avatar.path),
              radius: 18,
            ),
          ),
        ],
      );
    });
  }
}
