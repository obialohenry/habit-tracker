import 'dart:io';
import 'package:flutter/material.dart';
import 'package:habit_tracker/src/components.dart';
import 'package:habit_tracker/src/config.dart';
import 'package:habit_tracker/src/screens.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSetUpScreen extends StatefulWidget {
  const ProfileSetUpScreen({super.key});

  @override
  State<ProfileSetUpScreen> createState() => _ProfileSetUpScreenState();
}

class _ProfileSetUpScreenState extends State<ProfileSetUpScreen> {
  XFile? image;
  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back, color: theme.textTheme.bodyLarge?.color),
              SizedBox(height: 20),
              AppText(text: AppStrings.welcome, fontSize: 24, fontWeight: FontWeight.w600),
              SizedBox(height: 5),
              AppText(
                text: AppStrings.letsCustomizeYourWorkspace,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: theme.textTheme.bodyMedium?.color,
              ),
              SizedBox(height: 15),
              AppText(text: AppStrings.chooseAnAvatar, fontSize: 14, fontWeight: FontWeight.w700),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    ProfileView(size: 100, borderWidth: 4.0, image: image?.path),
                    GestureDetector(
                      onTap: () {
                        pickImage();
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 77,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          ProfileView(size: 55, borderWidth: 2.0, isSelected: index == 2),
                          SizedBox(height: 6),
                          AppText(
                            text: "Terminal",
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: theme.textTheme.bodySmall?.color,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              AppTextField(label: AppStrings.displayName, hintText: AppStrings.hintDisplayName),
              SizedBox(height: 20),
              AppTextField(
                maxLines: 6,
                label: AppStrings.currentFocus,
                trailingLabel: Container(
                  height: 20,
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: AppColors.kTagBackground,
                  ),
                  child: AppText(
                    text: AppStrings.optional,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kTagContent,
                  ),
                ),
                hintText: AppStrings.hintCurrentFocus,
              ),
              // Spacer(flex: 1),
              const SizedBox(height: 60),
              AppContainer(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
                text: AppStrings.continueText,
                showIcon: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileView extends StatelessWidget {
  ///Creates a widget displaying a user's profile.
  const ProfileView({
    super.key,
    required this.size,
    required this.borderWidth,
    this.isSelected = false,
    this.image,
  });
  final double size;
  final double borderWidth;
  final bool isSelected;
  final String? image;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.kTagContent,
        border: isSelected
            ? Border.all(width: borderWidth, color: theme.colorScheme.primary)
            : null,
        image: image == null
            ? null
            : DecorationImage(image: FileImage(File(image!)), fit: BoxFit.cover),
      ),
    );
  }
}
