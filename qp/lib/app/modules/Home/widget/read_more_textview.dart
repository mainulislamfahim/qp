import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import '../../../../gen/colors.gen.dart';


class AppReadMoreWidget extends StatelessWidget {
  const AppReadMoreWidget({
    super.key,
    required this.text,
    required this.maxLines,
  });
  final String text;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: maxLines,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: ColorName.black,
          fontSize: 12.sp,
          fontWeight: FontWeight.normal,
        ),
      ),
      colorClickableText: ColorName.primaryColor,
      trimMode: TrimMode.Line,
      trimCollapsedText: '...Read more'.tr,
      trimExpandedText: 'Less'.tr,
    );
  }
}
