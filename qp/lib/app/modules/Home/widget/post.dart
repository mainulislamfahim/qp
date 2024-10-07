import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
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
      child: Obx(() {
        return ListView.builder(
          // shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.post.length,
          itemBuilder: (_, item) {
            Log.w(controller.post.length);
            final Post posts = controller.post[item];
            return PostLayout(
              posts: posts,
            );
          },);
      }),);
  }
}
