import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:school_sports/utils/app_icons.dart';
import 'package:school_sports/views/widgets/custom_shadow_text.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../../../widgets/custom_text.dart';

class BasketBallScreen extends StatelessWidget {
  const BasketBallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuerywidth = MediaQuery.of(context).size.width;
    return Scaffold(


      ///--------------------------------body-------------------------------->
      body: Stack(
        children: [

          ///------------------------------background image------------------------->
          Container(
            width: double.infinity,
            child: Image.asset(AppImages.Basketball_screen_bg,fit: BoxFit.cover,),
          ),

          ///---------------------all code------------------->
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
            
                children: [
            
                  ///--------------------------text nos sports-------------------------->
                  Align(
                    alignment: Alignment.center,
                    child: CustomText(
                      bottom: 15.h,
                      top: 74.h,
                      text: "Basketball".tr,
                      fontName: "Margarine",
                      fontsize: 36.h,
                      color: AppColors.whiteFont,
                    ),
                  ),
            
            
            
                  Container(
                    height: 201.h,
                    width: mediaQuerywidth,
                    decoration: BoxDecoration(
                      color: AppColors.blue_7B8,
                      borderRadius: BorderRadius.circular(34.r)
                    ),
                    child: Center(
                      child: CustomText(
                        text: "courteVidoeDe".tr,
                        fontName: "Margarine",
                        fontsize: 18.h,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteFont,
                      ),
                    ),
                  ),
            
            
            
            
                  ///--------------------------logText----------------------------->
                  CustomShadowText(
                    top: 20.h,
                    maxline: 20,
                    text: "logText".tr,
                    fontName: "Margarine",
                    fontsize: 18.h,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteFont,
                  ),
            
            
                  ///----------------------------Respo text----------------------------->
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomShadowText(
                      bottom: 4.h,
                      top: 20.h,
                      maxline: 20,
                      text: "respo".tr,
                      fontName: "Margarine",
                      fontsize: 18.h,
                      fontWeight: FontWeight.w700,
                      color: AppColors.whiteFont,
                    ),
                  ),
            
            
            
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     width: 100.h,
                     height: 76.h,
                   child: Image.asset(AppImages.emmaLhomme,fit: BoxFit.cover,),
                   ),

                   Column(
                     children: [

                       Container(
                         height: 1.5.h,
                         width: 135.h,
                         color: AppColors.whiteFont_BE8,
                       ),



                       Row(
                         children: [
                           SvgPicture.asset(AppIcons.email_icon),
                           CustomShadowText(
                             bottom: 10.h,
                             top: 10.h,
                             maxline: 20,
                             text: ""
                                 "iesegpas".tr,
                             fontName: "Margarine",
                             fontsize: 18.h,
                             fontWeight: FontWeight.w700,
                             color: AppColors.whiteFont,
                           ),
                         ],
                       ),


                        Container(
                         height: 1.5.h,
                          width: 135.h,
                          color: AppColors.whiteFont_BE8,
                       ),
                     ],
                   )
                 ],
               ),


                  const SizedBox(height: 41,),
            
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
