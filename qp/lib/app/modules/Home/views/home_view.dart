import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:qp/app/modules/Home/widget/Story/otherStory.dart';
import 'package:qp/app/modules/Home/widget/Story/selfStory.dart';
import 'package:qp/app/modules/Home/widget/homeIcon.dart';
import 'package:qp/app/modules/Home/widget/icons.dart';
import 'package:qp/app/modules/Home/widget/post.dart';
import 'package:qp/app/modules/Home/widget/postSection.dart';
import 'package:qp/app/modules/Login/views/login_view.dart';
import 'package:qp/gen/assets.gen.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/divider.dart';
import 'package:qp/helper/iconWithTextButton.dart';
import 'package:qp/helper/rounded_container.dart';
import 'package:qp/helper/sizedbox_extension.dart';
import 'package:readmore/readmore.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/log_printer.dart';
import '../../../model/post/post_model.dart';
import '../controllers/home_controller.dart';
import '../widget/postLayout.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            children: [
              const HomeLogo(),
              10.height,
              const HomeIcon(),
              10.height,
              const HomePostSection(),
              10.height,
              const Row(
                children: [
                  HomeSelfStory(),
                  Expanded(
                    child: HomeOtherStory(),
                  ),
                ],
              ),
              customDivider(
                color: ColorName.black.withOpacity(0.5),
                paddingHorizontal: 0,
              ),
              10.height,
              const SizedBox(height: 600, child: HomeUserPost())
            ],
          ),
        ),
      ),
    );
  }
}
