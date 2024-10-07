import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../helper/rounded_container.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.images.logoHome.path,
          height: 30.h,
          width: 30.w,
        ),
        const Spacer(),
        roundedContainer(icon: Icons.add, color: const Color(0xffDFFCFC)),
        3.width,
        roundedContainer(
            icon: Icons.search_rounded, color: const Color(0xffDFFCFC)),
        3.width,
        Container(
          height: 30.h,
          width: 30.w,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xffDFFCFC)),
          child: Center(
            child: Image.asset(
              Assets.images.message.path,
              height: 30.h,
              width: 30.w,
            ),
          ),
        ),
      ],
    );
  }
}
