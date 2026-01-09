import 'package:flutter/material.dart';
import 'package:habit_tracker/src/components.dart';
import 'package:habit_tracker/src/config.dart';

class AppTextField extends StatelessWidget {
  ///
  const AppTextField({
    super.key,
    this.label,
    this.borderRadius,
    this.hintText,
    this.trailingLabel,
    this.maxLines,
    this.minLines,
  });
  final String? label;
  final double? borderRadius;
  final String? hintText;
  final Widget? trailingLabel;
  final int? maxLines;
  final int? minLines;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label == null
            ? const SizedBox.shrink()
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: label!, fontSize: 14, fontWeight: FontWeight.w700),
                      trailingLabel ?? SizedBox.shrink(),
                    ],
                  ),
                  SizedBox(height: 5),
                ],
              ),
        TextFormField(
          showCursor: true,
          cursorColor: theme.colorScheme.primary,
          maxLines: maxLines ?? 1,
          minLines: minLines ?? 1,
          style: TextStyle(
            fontFamily: AppStrings.inter,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: theme.textTheme.bodyLarge?.color,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: AppStrings.inter,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: theme.inputDecorationTheme.hintStyle?.color,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: theme.inputDecorationTheme.enabledBorder!.borderSide.color,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 7),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: theme.inputDecorationTheme.focusedBorder!.borderSide.color,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 7),
            ),
            fillColor: theme.inputDecorationTheme.fillColor,
            filled: theme.inputDecorationTheme.filled,
          ),
        ),
      ],
    );
  }
}
