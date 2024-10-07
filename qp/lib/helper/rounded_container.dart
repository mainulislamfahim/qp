import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qp/app/modules/Home/views/home_view.dart';

import '../gen/colors.gen.dart';

Widget roundedContainer({
  IconData? icon,
  Color? color,
}){
  return Container(
    height: 30.h,
    width: 30.w,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color ?? ColorName.gray70,
    ),
    child: Center(
      child: Icon(
        icon,
        color:  const Color(0xff0B3243),
        size: 27,
      ),
    ),
  );
}