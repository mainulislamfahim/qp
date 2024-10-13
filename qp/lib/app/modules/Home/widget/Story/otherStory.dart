import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/model/story/story_get_model.dart';
import 'package:qp/app/modules/Home/controllers/home_controller.dart';
import 'package:qp/gen/assets.gen.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/cached_network_image_builder.dart';
import 'package:qp/helper/get_image_url.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/helper/shimmer_loading.dart';
import 'package:reaction_askany/models/emotions.dart';
import 'package:reaction_askany/models/reaction_box_paramenters.dart';
import 'package:reaction_askany/reaction_askany.dart';
import 'package:story_view/story_view.dart';
import '../../../../../gen/colors.gen.dart';

class HomeOtherStory extends StatelessWidget {
  const HomeOtherStory({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SizedBox(
      height: 180.h,
      width: Get.width - 120.w,
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
              itemCount: controller.otherStoryList.length,
              itemBuilder: (_, item) {
                final Result story = controller.otherStoryList[item];
                if (!controller.isStoryLoading.value) {
                  return InkWell(
                    onTap: () {
                      Get.to(() =>
                          ViewStory(storyList: story)); // Pass the story list
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8),
                      child: Stack(
                        children: [
                          // Placeholder for image
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                border: Border.all(color: ColorName.gray410)),
                            child: SizedBox(
                              height: 150.h,
                              width: 100.w,
                              child: cachedImageHelper(
                                  imgurl: "story/${story.stories![0].media!}"),
                            ),
                          ),
                          Positioned(
                            left: 34.w,
                            bottom: 5.h,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: ColorName.blue,
                                      width: 2.w,
                                    )),
                                child: cachedImageHelper(
                                    imgHeight: 30.h,
                                    imgWidth: 30.w,
                                    imgurl: story.profilePic == null
                                        ? 'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg'
                                        : 'story/${story.profilePic!}'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return shimmerLoadingListHorizontalWidget(
                    height: 120.h,
                    width: 100.w,
                  );
                }
              });
        }
      }),
    );
  }
}

class ViewStory extends StatelessWidget {
  final Result storyList; // Receive the story list
  const ViewStory({super.key, required this.storyList});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final currentStory = storyList;
    return Scaffold(
      body: Stack(
        children: [
          // StoryView(
          //   controller: controller.storyController,
          //   onVerticalSwipeComplete: (Direction? direction) {
          //     if (direction == Direction.right) {
          //       controller.showNextUserStory(); // Move to the next user story
          //       Log.e(controller.currentStoryIndex.value);
          //     } else if (direction == Direction.up) {
          //       controller
          //           .showPreviousUserStory(); // Move to the previous user story
          //       Log.e(controller.currentStoryIndex.value);
          //     }
          //   },
          //   storyItems: currentStory.stories!.map((story) {
          //     return StoryItem.inlineImage(
          //       url: story.media == 'null'
          //           ? 'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png'
          //           : GetImageUrl.url('story/${story.media}'),
          //       controller: controller.storyController,
          //       caption: Text(
          //         story.title!,
          //         style: const TextStyle(
          //           color: Colors.white,
          //           backgroundColor: Colors.black54,
          //           fontSize: 17,
          //         ),
          //       ),
          //     );
          //   }).toList(), // Convert stories to storyItems for current user
          // ),
          Positioned(
            bottom:100.h,
            left: 150.w,
            child: ReactionWrapper(
              boxParamenters: ReactionBoxParamenters(
                brightness: Brightness.light,
                iconSize: 26,
                iconSpacing: 10,
                paddingHorizontal: 30,
                radiusBox: 40,
                quantityPerPage: 6,
              ),
              buttonReaction: const Padding(
                padding: EdgeInsets.only(top: 2.0),
                child: Icon(
                  Icons.face_outlined,
                  size: 20.0,
                  color: Colors.grey,
                ),
              ),
              child: Container(
                child: AppTextStyle(text: 'text'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
