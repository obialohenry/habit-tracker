import 'package:flutter/material.dart';
import 'package:habit_tracker/src/components.dart';
import 'package:habit_tracker/src/config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(gradient: Palette.kMidnightDepths),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset("name"),
            SizedBox(height: 120, child: Placeholder(color: AppColors.kPrimary)),
            SizedBox(height:15),
            AppText(text: AppStrings.trackra, fontSize: 24, fontWeight: FontWeight.w700),
            SizedBox(height:10),
            AppText(
              text: AppStrings.buildConsistencyDayAtATime,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.kContentSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
