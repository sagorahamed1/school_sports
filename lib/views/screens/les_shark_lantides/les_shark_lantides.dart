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
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.logoscreenbg), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 42.w),
          child: Column(
            children: [
              SizedBox(height: 75.h),
              CustomText(
                text: AppConstants.lesSharklantides,
                fontName: "Margarine",
                fontsize: 32.h,
                color: AppColors.whiteFont,
              ),
              SizedBox(height: 25.h),
              CustomCard(
                onpress: () {},
                title: AppConstants.quiSommes,
                textColor: Colors.white,
                bgColor: AppColors.nutLight,
              ),
              SizedBox(height: 25.h),
              CustomCard(
                onpress: () {},
                title: AppConstants.matchsEt,
                textColor: AppColors.nutLight,
                bgColor: AppColors.whiteLight,
              ),
              SizedBox(height: 25.h),
              CustomCard(
                onpress: () {},
                title: AppConstants.nosSportscAP,
                textColor: Colors.white,
                bgColor: AppColors.nutLight,
              ),
              SizedBox(height: 25.h),
              CustomCard(
                onpress: () {},
                title: AppConstants.lesSports,
                textColor: AppColors.nutLight,
                bgColor: AppColors.whiteLight,
              ),
              SizedBox(height: 25.h),
              CustomCard(
                onpress: () {},
                title: AppConstants.nosEvents,
                textColor: Colors.white,
                bgColor: AppColors.nutLight,
              ),
              SizedBox(height: 25.h),
              CustomCard(
                onpress: () {},
                title: AppConstants.notreBoutique,
                textColor: AppColors.nutLight,
                bgColor: AppColors.whiteLight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
