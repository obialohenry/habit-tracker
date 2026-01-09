import 'package:flutter/material.dart';

class AppColors {
  static const kBackground = Color(0xff111825);
  static const kPrimary = Color(0xff135BEC);
  static const kContentPrimary = Colors.white; //Used for main text, main icons
  static const kContentSecondary = Color(0xff7584A3); //Used for subtitles, muted icons
  static const kContentDisabled = Color(0xff3F4858); //Used for disabled/small text/icons
  static const kActionTertiary = Color(
    0xffA4B5CC,
  ); //Used for optional buttons/secondary text actions.
  static const kPageIndicatorInactive = Color(0xff313F53);
  static const kInfoPrimary = Color(0xff909FB3); //Used for hint text, helper text.
  static const kInputBorder = Color(0xff232A34); //Used for Textfields border
  static const kInputBackground = Color(0xff1F2228); //Used for Textfields fill color
  static const kTagBackground = Color(0xff1F2A3C); //Used for container badges/tags fill color.
  static const kTagContent = Color(0xff5C697D); //Used for container badges/tags child.
  static const kPageIndicatorActive = kPrimary;
}

class Palette {
  static const kMidnightDepths = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xff101A2F), Color(0xff101622), Color(0xff101827)],
  );
}
