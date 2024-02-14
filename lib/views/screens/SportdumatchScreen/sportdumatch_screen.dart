import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:school_sports/utils/app_constants.dart';
import 'package:school_sports/utils/app_icons.dart';
import 'package:school_sports/views/widgets/custom_text.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import 'InnerWidget/result_alert.dart';

class SportdumatchScreen extends StatelessWidget {
  const SportdumatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      //======================================> AppBar Section <====================================================
      appBar: AppBar(
        toolbarHeight: 35.h,
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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.matchsetResultatsScreenbg),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  top: 75.h,
                  text: AppConstants.sportmatch,
                  fontName: "Margarine",
                  fontsize: 28.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 26.h),
                SizedBox(width: 310.w, child: const Divider()),
                SizedBox(height: 16.h),
                CustomText(
                  text: AppConstants.dateHeure,
                  fontName: "Puritan",
                  fontsize: 20.h,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 16.h),
                CustomText(
                  text: AppConstants.ieuxSport,
                  fontName: "Puritan",
                  fontsize: 20.h,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 23.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImages.rectangleBg1,
                        width: 126.w, height: 54.h),
                    CustomText(
                      text: 'VS',
                      fontName: "Margarine",
                      fontsize: 15.h,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteLight,
                    ),
                    Image.asset(AppImages.rectangleBg2,
                        width: 126.w, height: 54.h),
                  ],
                ),
                SizedBox(height: 32.h),
                CustomText(
                  text: AppConstants.consultezMatch,
                  fontName: "Puritan",
                  fontsize: 12.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 32.h),
                SizedBox(width: 310.w, child: const Divider()),
                SizedBox(height: 73.h),
   //======================================================> ResultAert Section <===========================================================
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => const AlertDialog(
                          shape: Border(),
                          content: Padding(
                            padding: EdgeInsets.all(2),
                            child: ResultAert(),
                          ),
                        ));
                  },
                  child: CustomText(
                    text: AppConstants.laquaNews,
                    fontName: "Margarine",
                    fontsize: 25.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteLight,
                  ),
                ),
  //==========================================================================================================
                SizedBox(height: 17.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      text: AppConstants.petitResume,
                      fontName: "Puritan",
                      fontsize: 16.h,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteLight,
                    ),
                    Image.asset(AppImages.mettrePhoto,
                        width: 119.w, height: 182.h),
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
