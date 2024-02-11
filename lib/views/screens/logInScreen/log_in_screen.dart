import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.logoscreenbg), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 14.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 121.h),
              CustomText(
                text: AppConstants.logIn,
                fontName: "Margarine",
                fontsize: 36.h,
                fontWeight: FontWeight.w400,
                color: AppColors.whiteLight,
              ),
              SizedBox(height: 38.h),
              const CustomTextField(title: AppConstants.enterEmail),
              SizedBox(height: 22.h),
              const CustomTextField(title: AppConstants.enterPass),
              SizedBox(height: 22.h),
              CustomButton(title: 'LOG IN', onpress: () {}),
              SizedBox(height: 37.h),
              CustomText(
                text: 'OU',
                fontName: "Margarine",
                fontsize: 25.h,
                fontWeight: FontWeight.w400,
                color: AppColors.whiteLight,
              ),
              SizedBox(height: 35.h),
              CustomButton(title: AppConstants.sINSCRIRE, onpress: () {}),
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
