import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_sports/views/screens/lorganisationScreen/InnerWidget/squer_card.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_images.dart';
import '../../../widgets/custom_text.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 461.w,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomText(
            text: AppConstants.leBureau,
            fontName: "Margarine",
            fontsize: 20.h,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          SizedBox(height: 20.h),
          CustomText(
            text: AppConstants.presidenteAnae,
            fontName: "Puritan",
            fontsize: 11.h,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          SizedBox(height: 3.h),
          Column(
            children: [
              const SquerCard(
                image: AssetImage(AppImages.lebureau3),
                color: Color(0xffbcbabb),
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.emillogo),
                  SizedBox(width: 5.w),
                  CustomText(
                    text: AppConstants.anaeEmail,
                    fontName: "Puritan",
                    fontsize: 8.h,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.instalogo),
                  SizedBox(width: 5.w),
                  CustomText(
                    textAlign: TextAlign.start,
                    text: AppConstants.anaeEmail,
                    fontName: "Puritan",
                    fontsize: 8.h,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 17.h),
          CustomText(
            text: AppConstants.vicePresidents,
            fontName: "Puritan",
            fontsize: 11.h,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          CustomText(
            text: AppConstants.clarenceCoeffic,
            fontName: "Puritan",
            fontsize: 11.h,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          SizedBox(height: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const SquerCard(
                    image: AssetImage(AppImages.lebureau2),
                    color: Color(0xffc9c9ce),
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.emillogo),
                      SizedBox(width: 5.w),
                      CustomText(
                        text: AppConstants.anaeEmail,
                        fontName: "Puritan",
                        fontsize: 8.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.instalogo),
                      SizedBox(width: 5.w),
                      CustomText(
                        textAlign: TextAlign.start,
                        text: AppConstants.anaeEmail,
                        fontName: "Puritan",
                        fontsize: 8.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const SquerCard(
                    image: AssetImage(AppImages.lebureau4),
                    color: Color(0xffc5bcb7),
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.emillogo),
                      SizedBox(width: 5.w),
                      CustomText(
                        text: AppConstants.anaeEmail,
                        fontName: "Puritan",
                        fontsize: 8.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.instalogo),
                      SizedBox(width: 5.w),
                      CustomText(
                        textAlign: TextAlign.start,
                        text: AppConstants.anaeEmail,
                        fontName: "Puritan",
                        fontsize: 8.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 17.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                text: AppConstants.secretaireMaelys,
                fontName: "Puritan",
                fontsize: 11.h,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              CustomText(
                text: AppConstants.TresorierClement,
                fontName: "Puritan",
                fontsize: 11.h,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const SquerCard(
                    image: AssetImage(AppImages.lebureau1),
                    color: Color(0xffcdcbcc),
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.emillogo),
                      SizedBox(width: 5.w),
                      CustomText(
                        text: AppConstants.anaeEmail,
                        fontName: "Puritan",
                        fontsize: 8.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.instalogo),
                      SizedBox(width: 5.w),
                      CustomText(
                        textAlign: TextAlign.start,
                        text: AppConstants.anaeEmail,
                        fontName: "Puritan",
                        fontsize: 8.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const SquerCard(
                    image: AssetImage(AppImages.lebureau5),
                    color: Color(0xffc5bcb7),
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.emillogo),
                      SizedBox(width: 5.w),
                      CustomText(
                        text: AppConstants.anaeEmail,
                        fontName: "Puritan",
                        fontsize: 8.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.instalogo),
                      SizedBox(width: 5.w),
                      CustomText(
                        textAlign: TextAlign.start,
                        text: AppConstants.anaeEmail,
                        fontName: "Puritan",
                        fontsize: 8.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
