import 'package:flutter/material.dart';
import 'package:habit_tracker/src/config.dart';

class AppText extends StatelessWidget {
  ///Creates a text.
  const AppText({super.key, required this.text, this.color, this.fontSize, this.fontWeight,this.textStyle,});
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:textStyle?? TextStyle(
        fontFamily: AppStrings.inter,
        fontSize: fontSize ?? 18,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.kWhite,
      ),
    );
  }
}
