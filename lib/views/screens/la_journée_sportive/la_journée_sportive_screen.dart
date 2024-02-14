import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_images.dart';
import '../../../utils/dimensions.dart';
import '../../widgets/custom_shadow_text.dart';
import '../../widgets/custom_text.dart';

class LaJourneeSportiveScreen extends StatelessWidget {
  const LaJourneeSportiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 35.h,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Container(
                padding: const EdgeInsets.only(left: 17),
                child: SvgPicture.asset(
                  AppIcons.back_arrow,
                  color: AppColors.whiteFont,
                ))),
      ),

      ///--------------------------------body-------------------------------->
      body: Stack(
        children: [
          ///------------------------------background image------------------------->
          Container(
            height: double.infinity.h,
            width: double.infinity.w,
            child: Image.asset(
              AppImages.laJourneSportive_screen_bgImage,
              fit: BoxFit.cover,
            ),
          ),

          ///---------------------all code------------------->
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 20.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 35.h,
                  ),

                  ///--------------------------la journee sportive-------------------------->
                  Align(
                    alignment: Alignment.center,
                    child: CustomText(
                      top: 27,
                      text: "La Journée Sportive",
                      fontName: "Margarine",
                      fontsize: 28.h,
                      color: AppColors.whiteFont,
                    ),
                  ),

                  ///--------------------------details text-------------------------->
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      left: 25.h,
                      top: 27.h,
                      textAlign: TextAlign.start,
                      text: "Détails : ",
                      color: AppColors.whiteFont,
                      fontsize: Dimensions.fontSizeLarge.h,
                      fontWeight: FontWeight.w700,
                      fontName: "Puritan",
                    ),
                  ),

                  ///------------------------quand ? text---------------------------->
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      left: 25.h,
                      top: 90.h,
                      textAlign: TextAlign.start,
                      bottom: 21.h,
                      text: "Quand ? : ",
                      color: AppColors.whiteFont,
                      fontsize: Dimensions.fontSizeLarge.h,
                      fontWeight: FontWeight.w700,
                      fontName: "Puritan",
                    ),
                  ),

                  CustomText(
                    textAlign: TextAlign.start,
                    text: "Le lieu",
                    bottom: 30.h,
                    color: AppColors.whiteFont,
                    fontsize: Dimensions.fontSizeLarge.h,
                    fontWeight: FontWeight.w700,
                    fontName: "Puritan",
                  ),

                  ///----------------------------4 containers------------------------>
                  Padding(
                    padding: EdgeInsets.only(left: 55.w, right: 55.w),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 107.h,
                            width: 107.w,
                            color: const Color(0xFFC4C4C4),
                          ),
                        ),
                        SizedBox(
                          width: 11.w,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 107.h,
                            width: 107.w,
                            color: const Color(0xFFC4C4C4),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 11.h,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 55.w, right: 55.w),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 107.h,
                            width: 107.w,
                            color: const Color(0xFFC4C4C4),
                          ),
                        ),
                        SizedBox(
                          width: 11.w,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 107.h,
                            width: 107.w,
                            color: const Color(0xFFC4C4C4),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///-------------------------addresse text------------------------>
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      top: 20.h,
                      bottom: 10.h,
                      left: 62.w,
                      text: "Adresse",
                      color: AppColors.whiteFont,
                      fontsize: Dimensions.fontSizeLarge.h,
                      fontWeight: FontWeight.w700,
                      fontName: "Puritan",
                    ),
                  ),

                  ///-------------------------addresse text------------------------>
                  CustomText(
                    top: 65.h,
                    text: "Compte à rebours du sg",
                    color: AppColors.whiteFont,
                    fontsize: Dimensions.fontSizeLarge.h,
                    fontWeight: FontWeight.w700,
                    fontName: "Puritan",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
