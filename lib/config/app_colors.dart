import 'package:flutter/material.dart';

class AppColors {
  static const kBackground = Color(0xff111825);
  static const kPrimary = Color(0xff135BEC);
  static const kContentPrimary = Colors.white;
  static const kContentSecondary = Color(0xff7584A3);
  static const kActionTertiary = Color(0xffA4B5CC);
  static const kPageIndicatorInactive = Color(0xff313F53);
  static const kContentDisabled = Color(0xff3F4858);
  static const kInfoPrimary = Color(0xff909FB3);
  static const kInputBorder = Color(0xff232A34);
  static const kInputBackground = Color(0xff1F2228);
  static const kTagBackground = Color(0xff1F2A3C);
  static const kTagContent = Color(0xff5C697D);
  static const kPageIndicatorActive = kPrimary;
}

class Palette {
  static const kMidnightDepths = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xff101A2F), Color(0xff101622), Color(0xff101827)],
  );
}
