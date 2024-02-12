import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_text.dart';
import 'InnerWidget/circle_card.dart';

class LorganisationScreen extends StatelessWidget {
  const LorganisationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.lorganisationbg), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 47.h),
                CustomText(
                  text: AppConstants.lorganisation,
                  fontName: "Margarine",
                  fontsize: 25.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 24.h),
                CustomText(
                  text: AppConstants.leBureau,
                  fontName: "Puritan",
                  fontsize: 16.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleCard(image: AssetImage(AppImages.lebureau1)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau2)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau3)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau4)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau5)),
                  ],
                ),
                SizedBox(height: 34.h),
                CustomText(
                  text: AppConstants.lePole,
                  fontName: "Puritan",
                  fontsize: 16.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 13.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleCard(image: AssetImage(AppImages.lebureau6)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau7)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau8)),
                  ],
                ),
                SizedBox(height: 34.h),
                CustomText(
                  text: AppConstants.lePoleEvenm,
                  fontName: "Puritan",
                  fontsize: 16.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 13.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleCard(image: AssetImage(AppImages.lebureau9)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau10)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau11)),
                  ],
                ),
                SizedBox(height: 34.h),
                CustomText(
                  text: AppConstants.lePoleSports,
                  fontName: "Puritan",
                  fontsize: 16.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 13.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleCard(image: AssetImage(AppImages.lebureau12)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau13)),
                  ],
                ),
                SizedBox(height: 34.h),
                CustomText(
                  text: AppConstants.lePoleCompetition,
                  fontName: "Puritan",
                  fontsize: 16.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 13.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleCard(image: AssetImage(AppImages.lebureau14)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau15)),
                  ],
                ),
                SizedBox(height: 34.h),
                CustomText(
                  text: AppConstants.lePoleSponsors,
                  fontName: "Puritan",
                  fontsize: 16.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 13.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleCard(image: AssetImage(AppImages.lebureau16)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau17)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
