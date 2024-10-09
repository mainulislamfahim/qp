import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/model/story/story_get_model.dart';
import 'package:qp/app/modules/Home/controllers/home_controller.dart';
import 'package:qp/helper/cached_network_image_builder.dart';
import 'package:qp/helper/get_image_url.dart';
import 'package:qp/helper/log_printer.dart';
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
        return ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: controller.storyList.length,
            itemBuilder: (_, item) {
              Log.w(controller.storyList.length);
              final Result story = controller.storyList[item];
              return InkWell(
                onTap: () {
                  Get.to(() =>
                      ViewStory(storyList: controller
                          .storyList)); // Pass the story list
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8),
                  child: Stack(
                    children: [
                      // Placeholder for image
                      SizedBox(
                        height: 150.h,
                        width: 100.w,
                        child: cachedImageHelper(imgurl: story.coverPic!,),
                      ),
                      Positioned(
                        left: 38.w,
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
                            child: circularImage(imgUrl: story.profilePic!),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      }),
    );
  }
}

class ViewStory extends StatelessWidget {
  final List<Result> storyList; // Receive the story list
  const ViewStory({super.key, required this.storyList});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: StoryView(
        controller: controller.storyController,
        storyItems: storyList.expand((story) {
          return List.generate(story.stories!.length, (item) {
            Log.w('Story : ${story.stories!.length}');
            return StoryItem.inlineImage(
              url: GetImageUrl.url('story/${story.stories![item].media}'), // Assuming each story has a URL
              controller: controller.storyController,
              caption: Text(
                story.firstName!, // Assuming each story has a title
                style: const TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.black54,
                  fontSize: 17,
                ),
              ),
            );
          });
        }).toList(), // `expand` flattens the list of lists into a single list
      ),

    );
  }
}
