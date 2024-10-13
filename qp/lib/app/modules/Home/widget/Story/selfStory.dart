import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:qp/app/modules/Home/controllers/home_controller.dart';
import 'package:qp/app/routes/app_pages.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../../helper/shimmer_loading.dart';
import '../../../../model/story/story_get_model.dart';
import 'otherStory.dart';

class HomeSelfStory extends StatelessWidget {
  const HomeSelfStory({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SizedBox(
      height: 180.h,
      width: 110.w,
      child: Obx(() {
        if (controller.isStoryLoading.value) {
          return shimmerLoadingListHorizontalWidget(
            height: 120.h,
            width: 100.w,
          );
        } else {
          return ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: controller.selfStoryList.isEmpty
                  ? 1
                  : controller.selfStoryList.length,
              itemBuilder: (_, item) {
                if (!controller.isStoryLoading.value && controller.selfStoryList.isNotEmpty) {
                  final Result story = controller.selfStoryList[item];
                  return InkWell(
                    onTap: controller.selfStoryList.isEmpty
                        ? () {}
                        : () {
                            Get.to(() => ViewStory(
                                storyList: story)); // Pass the story list
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorName.primaryColor,
                                width: 2.w,
                              ),
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25.r),
                              child: Image.asset(
                                Assets.images.chancal.path,
                                height: 150.h,
                                width: 100.w,
                                fit: BoxFit.fill,
                              ),
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
                } else {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorName.primaryColor,
                            width: 2.w,
                          ),
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.r),
                          child: Image.asset(
                            Assets.images.chancal.path,
                            height: 150.h,
                            width: 100.w,
                            fit: BoxFit.fill,
                          ),
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
                  );
                }
              });
        }
      }),
    );
  }
}
