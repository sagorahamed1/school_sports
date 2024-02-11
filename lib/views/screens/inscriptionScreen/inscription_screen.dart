import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';

class InscriptionScreen extends StatelessWidget {
  const InscriptionScreen({super.key});

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
              SizedBox(height: 131.h),
              CustomText(
                text: AppConstants.inscription,
                fontName: "Margarine",
                fontsize: 36.h,
                fontWeight: FontWeight.w400,
                color: AppColors.whiteLight,
              ),
              SizedBox(height: 157.h),
              const CustomTextField(title: AppConstants.enterEmail),
              SizedBox(height: 41.h),
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
