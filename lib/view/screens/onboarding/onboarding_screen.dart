import 'package:flutter/material.dart';
import 'package:habit_tracker/src/components.dart';
import 'package:habit_tracker/src/config.dart';
import 'package:habit_tracker/src/models.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnboardingInfo> onboardingMessages = [
    OnboardingInfo(
      image: "",
      title: "Track what\nyou're learning",
      message:
          "Stay consistent with your learning goals\n"
          "and visualize your progress over time.",
    ),
    OnboardingInfo(
      image: "",
      title: "Build daily habits",
      message:
          "Small actions compund. Track\nyour consistency and grow your streak.",
    ),
    OnboardingInfo(image: "", title: "Reflect&improve", message: "Turn experience into growth."),
  ];
  int currentPage = 0;
  void changePage(int page) {
    currentPage = page;
    setState(() {
      
    });
  }
  void skipToLastOnboarding() {
    currentPage = 2;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kDarkModeBlue,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.topRight,
                child: Visibility(
                  visible: currentPage!=2,
                  child: AppText(
                    onTap: skipToLastOnboarding,
                    text: AppStrings.skip,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kMistBlue,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Expanded(
                child: PageView.builder(
                  itemCount: onboardingMessages.length,
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (value) => changePage(value),
                  itemBuilder: (context, page) {
                    OnboardingInfo onboardingInfo = onboardingMessages[currentPage];
                    return Column(
                      children: [
                        SizedBox(height: 250, child: Placeholder(color: AppColors.kRoyalBlue)),
                        SizedBox(height: 25),
                        AppText(
                          text: onboardingInfo.title,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(height: 10),
                        AppText(
                          text: onboardingInfo.message,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kSlateBlue,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        height: 8,
                        width: currentPage == index ? 25 : 8,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color:currentPage == index?AppColors.kRoyalBlue: AppColors.kGraphiteBlue,
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 20),
                  AppContainer(text:currentPage == 2? AppStrings.getStarted :AppStrings.next, showIcon:currentPage == 2?false :true),
                 currentPage == 2? Column(
                    children: [
                      SizedBox(height: 10,),
                      RichText(text:TextSpan(
                        text: AppStrings.alreadyHaveAnAccount,
                        style:TextStyle(fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kSlateBlue,
                        ),
                        children: [
                          TextSpan(
                            text: AppStrings.logIn,
                            style:TextStyle(fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kSlateBlue,
                        ),
                          )
                        ]
                      ),)
                    ],
                  ): const SizedBox.shrink()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
