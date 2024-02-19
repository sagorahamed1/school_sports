import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../routes/routes.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_text.dart';

class LanguesScreen extends StatelessWidget {
  const LanguesScreen({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 322.h),
              //=====================================> Language Flags <==================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.logInScreen);
                    },
                    child: Image.asset(
                      width: 137.h,
                      height: 121.h,
                      AppImages.francaisFlage,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.logInScreen);
                    },
                    child: Image.asset(
                      width: 109.h,
                      height: 74.h,
                      AppImages.englishFlage,
                    ),
                  ),
                ],
              ),
              //=====================================> Language Text <==================================

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    text: AppConstants.francais,
                    fontName: "Puritan",
                    fontsize: 18.h,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteLight,
                  ),
                  CustomText(
                    text: AppConstants.english,
                    fontName: "Puritan",
                    fontsize: 18.h,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteLight,
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                AppImages.ux4logo,
                width: double.infinity,
                height: 44.h,
              ),
              SizedBox(height: 45.h),
            ],
          ),
        ),
      ),
    );
  }
}
