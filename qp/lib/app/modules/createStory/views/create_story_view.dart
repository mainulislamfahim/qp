import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:qp/app/modules/Home/views/home_view.dart';
import 'package:qp/app/modules/createStory/widget/vSStoryDesigner.dart';
import 'package:qp/app/routes/app_pages.dart';
import 'package:qp/gen/assets.gen.dart';
import 'package:qp/gen/colors.gen.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/appbar_title.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../controllers/create_story_controller.dart';

class CreateStoryView extends GetView<CreateStoryController> {
  const CreateStoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appbarTitle(text: 'Create Story'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.toNamed(Routes.HOME);
          },
          icon: const Icon(
            EvaIcons.close,
          ),
        ),
      ),
      body: Row(
        key: controller.globalKey,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {},
            child: const CreateStoryLayout(
              colors: [
                Color(0xff60EFFF),
                Color(0xff0061FF),
              ],
              text: 'Aa',
              logoText: true,
            ),
          ),
          GestureDetector(
            onTap: () async {
              String? mediaPath = await controller.prepareImage();
              Get.to(() => VSStoryDesignerView(
                    media: mediaPath,
                  ));
            },
            child: const CreateStoryLayout(
              colors: [Color(0xff40C9FF), Color(0xffE81CFF)],
              logoText: false,
            ),
          ),
        ],
      ),
    );
  }
}

class CreateStoryLayout extends StatelessWidget {
  const CreateStoryLayout(
      {super.key,
      required this.colors,
      this.text,
      this.image,
      required this.logoText});

  final List<Color> colors;
  final String? text;
  final String? image;
  final bool logoText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: Get.width / 2.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              constraints: BoxConstraints(
                  minHeight: 30.h,
                  maxWidth: 120.w,
                  maxHeight: 120.h,
                  minWidth: 30.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorName.white,
              ),
              child: Center(
                child: logoText
                    ? AppTextStyle(
                        text: text!,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w700,
                      )
                    : Image.asset(
                        Assets.images.galaryImage.path,
                        height: 50.h,
                        width: 50.w,
                      ),
              ),
            ),
          ),
          5.height,
          AppTextStyle(
            text: logoText ? 'Text Story' : 'Image Story',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: ColorName.white,
          ),
        ],
      ),
    );
  }
}
