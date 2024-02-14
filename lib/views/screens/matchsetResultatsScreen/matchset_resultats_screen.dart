import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:school_sports/utils/app_constants.dart';
import 'package:school_sports/utils/app_icons.dart';
import 'package:school_sports/views/widgets/custom_text.dart';
import '../../../routes/routes.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

class MatchsetResultatsScreen extends StatelessWidget {
  const MatchsetResultatsScreen({super.key});

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
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.matchsetResultatsScreenbg),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                top: 75.h,
                text: AppConstants.matChs,
                fontName: "Margarine",
                fontsize: 28.h,
                fontWeight: FontWeight.w400,
                color: AppColors.whiteLight,
              ),
              SizedBox(height: 15.h),
              CustomText(
                text: AppConstants.duMois,
                fontName: "Margarine",
                fontsize: 16.h,
                fontWeight: FontWeight.w400,
                color: AppColors.whiteLight,
              ),
              SizedBox(height: 12.h),
              SizedBox(width: 68.w, child: const Divider()),
              SizedBox(height: 29.h),
              GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.sportdumatchScreen);
                  },
                  child: Image.asset(AppImages.rectanglGroup))
            ],
          ),
        ),
      ),
    );
  }
}
