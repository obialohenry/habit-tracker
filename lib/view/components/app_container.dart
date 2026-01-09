import 'package:flutter/material.dart';
import 'package:habit_tracker/src/components.dart';
import 'package:habit_tracker/src/config.dart';

class AppContainer extends StatelessWidget {
  ///Creates
  const AppContainer({
    super.key,
    this.showIcon = false,
    required this.text,
    this.onTap,
    this.icon,
    this.height,
  });
  final bool showIcon;
  final String text;
  final VoidCallback? onTap;
  final Widget? icon;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 50,
        decoration: BoxDecoration(
          color: AppColors.kPrimary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(text: text, fontWeight: FontWeight.w700, fontSize: 16),
            showIcon
                ? Row(
                    children: [
                      SizedBox(width: 8),
                      icon ?? Icon(Icons.arrow_forward, size: 16, color: AppColors.kContentPrimary),
                    ],
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
