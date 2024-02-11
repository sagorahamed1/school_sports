import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_sports/utils/app_colors.dart';
import 'package:school_sports/utils/app_constants.dart';
import 'package:school_sports/utils/app_images.dart';
import 'package:school_sports/views/widgets/custom_text.dart';
import 'Inner_Widget/custom_card.dart';

class LesSharklantides extends StatelessWidget {
  const LesSharklantides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //==================================> Background Image <=================================>>
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                AppImages.lesSharklantidesBg,
                fit: BoxFit.cover,
              ),
            ),
            //==========================================================================================>>
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CustomText(
                      top: 74.h,
                      text: AppConstants.lesSharklantides,
                      fontName: "Margarine",
                      fontsize: 32.h,
                      color: AppColors.whiteFont,
                    ),
                  ),
                  SizedBox(height: 31.h),
                  CustomCard(
                    onpress: () {},
                    title: AppConstants.quiSommes,
                    textColor: Colors.white,
                    bgColor: AppColors.nutLight,
                  ),
                  SizedBox(height: 27.h),
                  CustomCard(
                    onpress: () {},
                    title: AppConstants.matchsEt,
                    textColor: AppColors.nutLight,
                    bgColor: AppColors.whiteLight,
                  ),
                  SizedBox(height: 28.h),
                  CustomCard(
                    onpress: () {},
                    title: AppConstants.nosSportscAP,
                    textColor: Colors.white,
                    bgColor: AppColors.nutLight,
                  ),
                  SizedBox(height: 31.h),
                  CustomCard(
                    onpress: () {},
                    title: AppConstants.lesSports,
                    textColor: AppColors.nutLight,
                    bgColor: AppColors.whiteLight,
                  ),
                  SizedBox(height: 31.h),
                  CustomCard(
                    onpress: () {},
                    title: AppConstants.nosEvents,
                    textColor: Colors.white,
                    bgColor: AppColors.nutLight,
                  ),
                  SizedBox(height: 31.h),
                  CustomCard(
                    onpress: () {},
                    title: AppConstants.notreBoutique,
                    textColor: AppColors.nutLight,
                    bgColor: AppColors.whiteLight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
