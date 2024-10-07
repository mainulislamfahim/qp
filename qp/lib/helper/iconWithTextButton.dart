import 'package:flutter/cupertino.dart';
import 'package:qp/app/modules/Home/views/home_view.dart';
import 'package:qp/gen/colors.gen.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/sizedbox_extension.dart';

class IconWithTextButton extends StatelessWidget {
  const IconWithTextButton({
    super.key,
    required this.icon,
    required this.text,
    this.textColor,
    this.iconColor,
    this.fontSize,
    this.fontWeight,
    this.size,
  });
  final IconData? icon;
  final String text;
  final Color? iconColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: size,
          color: iconColor ?? ColorName.black,
        ),
        3.width,
        AppTextStyle(
          text: text,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: fontSize,
          color: textColor,
        ),
      ],
    );
  }
}
