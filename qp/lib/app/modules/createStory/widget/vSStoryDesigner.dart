import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qp/app/modules/createStory/controllers/create_story_controller.dart';
import 'package:qp/app/modules/createStory/views/create_story_view.dart';
import 'package:qp/app/routes/app_pages.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/avatar.dart';
import 'package:qp/helper/global_button_without_gradient.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:share_plus/share_plus.dart';
import 'package:vs_story_designer/vs_story_designer.dart';

import '../../../../gen/colors.gen.dart';

class VSStoryDesignerView extends StatelessWidget {
  const VSStoryDesignerView({super.key, this.media});
  final String? media;
  @override
  Widget build(BuildContext context) {
    final storyController = Get.put(CreateStoryController());
    return VSStoryDesigner(
      centerText: "Start Creating Your Story",

      middleBottomWidget: ReactionButton<String>(
        isChecked: true,
        onReactionChanged: (Reaction<String>? reaction) {
          debugPrint('Selected value: ${reaction?.value}');
        },
        reactions: const <Reaction<String>>[
          Reaction<String>(
            value: 'like',
            icon: Icon(
              Icons.thumb_up_alt_rounded,
              color: Colors.blue,
            ),
          ),
          Reaction<String>(
            value: 'love',
            icon: Icon(
              Icons.favorite,
              color: ColorName.crimsonRed,
            ),
          ),
        ],
        selectedReaction: const Reaction<String>(
          value: 'like_fill',
          icon: Icon(Icons.headphones),
        ),
        itemSize: const Size(25, 25),
      ),
      onDoneButtonStyle: Container(
        height: 30.h,
        width: 50.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: Colors.transparent,
          border: Border.all(
            color: Colors.white,
            width: 2.w,
          ),
        ),
        child: const Center(
          child: AppTextStyle(
            text: 'Done',
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      themeType: ThemeType.light, // OPTIONAL, Default ThemeType.dark
      galleryThumbnailQuality: 250,
      isCustomFontList: true,
      onDone: (uri) async{
        debugPrint(uri);
        Log.w(uri.toString());
        await storyController.createStory(title: 'title', image: uri, privacy: 'public');
        Get.back();
        Get.offNamed(Routes.HOME);
      },
      mediaPath: media,
    );
  }
}
