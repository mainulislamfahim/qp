import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:qp/app/model/post/post_model.dart';
import 'package:qp/app/modules/Home/controllers/home_controller.dart';
import 'package:qp/app/modules/Home/widget/postLayout.dart';
import 'package:qp/helper/cached_network_image_builder.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/helper/sizedbox_extension.dart';
import 'package:readmore/readmore.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/app_text_style.dart';
import '../../../../helper/divider.dart';
import '../../../../helper/iconWithTextButton.dart';

class HomeUserPost extends StatelessWidget {
  const HomeUserPost({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Obx(
        () {
          if (controller.isInitialize.value == 1) {
            return LoadingAnimationWidget.stretchedDots(
                color: ColorName.primaryColor, size: 40.sp);
          } else if (controller.isInitialize.value == 0){
            return NotificationListener(
            onNotification: (ScrollNotification scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                  scrollInfo.metrics.maxScrollExtent &&
                  controller.isEndPage.value == false &&
                  controller.isLoading.value == false) {
                controller.posts();
              }
              return false;
            },
            child: RefreshIndicator(
              onRefresh: () async {
                controller.isEndPage.value = false;
                controller.currentPage.value = 0;
                await controller.posts();
              },
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: controller.post.length,
                itemBuilder: (_, item) {
                  final Post posts = controller.post[item];
                  return PostLayout(
                    item: item,
                    posts: posts,
                  );
                },
              ),
            ),
          );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
