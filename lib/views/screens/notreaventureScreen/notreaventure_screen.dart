import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:school_sports/utils/app_icons.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_text.dart';
import 'InnerWidget/circle_card.dart';
import 'InnerWidget/custom_alert_dialog.dart';

class NotreaventureScreen extends StatelessWidget {
  const NotreaventureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      //======================================> AppBar Section <====================================================
      appBar: AppBar(
        toolbarHeight: 35,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset(
              AppIcons.back_arrow,
              color: AppColors.whiteFont,
            )),
      ),
//==============================================================================================================
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.notreaventurebg), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 65.h),
     //==============================================> Description Section <======================================================================
                CustomText(
                  text: AppConstants.notreAventure,
                  fontName: "Margarine",
                  fontsize: 28.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 26.h),
                SizedBox(width: 68.w, child: const Divider()),
                SizedBox(height: 25.h),
                CustomText(
                  textAlign: TextAlign.start,
                  text: AppConstants.dans,
                  maxline: 4,
                  fontName: "Puritan",
                  fontsize: 13.h,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 30.h),
                CustomText(
                  textAlign: TextAlign.start,
                  text: AppConstants.dans1,
                  maxline: 8,
                  fontName: "Puritan",
                  fontsize: 13.h,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 30.h),
                CustomText(
                  textAlign: TextAlign.start,
                  text: AppConstants.dans2,
                  maxline: 5,
                  fontName: "Puritan",
                  fontsize: 13.h,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 31.h),
                SizedBox(width: 68.w, child: const Divider()),

                SizedBox(height: 47.h),
                CustomText(
                  text: AppConstants.lorganisation,
                  fontName: "Margarine",
                  fontsize: 25.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 24.h),

//===============================================> Alert Dialog Section <=======================================

                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => const AlertDialog(
                              content: Padding(
                                padding: EdgeInsets.all(2),
                                child: CustomAlertDialog(),
                              ),
                            ));
                  },

//=====================================================================================================================================

                  child: CustomText(
                    text: AppConstants.leBureau,
                    fontName: "Puritan",
                    fontsize: 16.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteLight,
                  ),
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
