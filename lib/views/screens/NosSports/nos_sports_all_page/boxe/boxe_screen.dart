import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:school_sports/utils/app_icons.dart';
import 'package:school_sports/utils/dimensions.dart';
import 'package:school_sports/views/widgets/custom_shadow_text.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../../../widgets/custom_text.dart';

class BoxeScreen extends StatelessWidget {
  const BoxeScreen({super.key});

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
            child: Image.asset(AppImages.boxe_screen_bgImage,fit: BoxFit.cover,),
          ),

          ///---------------------all code------------------->
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27,vertical: 20),
              child: Column(

                children: [

                  SizedBox(height: 15.h,),


                  Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(onPressed: (){
                        Get.back();
                      }, icon: SvgPicture.asset(AppIcons.back_arrow,color: AppColors.whiteFont,))),

                  ///--------------------------text nos sports-------------------------->
                  Align(
                    alignment: Alignment.center,
                    child: CustomText(
                      bottom: 15.h,

                      // top: 74.h,
                      text: "Boxe",
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




                  ///--------------------------first lequips Text----------------------------->
                  CustomShadowText(
                    top: 20.h,
                    maxline: 20,
                    text: "Léquipe".tr,
                    fontName: "Margarine",
                    fontsize: 16.h,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteFont,
                  ),



                  ///--------------------------scound les Text----------------------------->
                  CustomShadowText(
                    top: 20.h,
                    maxline: 20,
                    text: "Les".tr,
                    fontName: "Margarine",
                    fontsize: 16.h,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteFont,
                  ),




                  SizedBox(height: 130.h,),
                  ///----------------------------pespo text----------------------------->
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomShadowText(
                      bottom: 7.h,
                      top: 20.h,
                      maxline: 20,
                      text: "Respo : Mathis Bages",
                      fontName: "Margarine",
                      fontsize: 18.h,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteFont,
                    ),
                  ),



                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      ///-------------------profile image--------------------->
                      SizedBox(
                        width: 69.h,
                        height: 76.h,
                        child: Image.asset(AppImages.emmaLhomme,fit: BoxFit.cover,),
                      ),



                      Column(
                        children: [

                          Container(
                            height: 1.h,
                            width: 135.w,
                            color: AppColors.whiteFont,
                          ),


                          Row(
                            children: [

                              ///--------------------------instragram text and icon------------------------------>
                              Image.asset(AppImages.instragramIcon),


                              CustomShadowText(
                                left: 12.h,
                                bottom: 10.h,
                                top: 10.h,
                                maxline: 20,
                                text: "ieseg.fight.club",
                                fontName: "Margarine",
                                fontsize: Dimensions.fontSizeDefault,
                                fontWeight: FontWeight.w700,
                                color: AppColors.whiteFont,
                              ),
                            ],
                          ),


                          Container(
                            height: 1.h,
                            width: 135.w,
                            color: AppColors.whiteFont,
                          ),
                        ],
                      )
                    ],
                  ),




                  SizedBox(height: 7,),

                  ///-----------------------email text----------------------->
                  Row(
                    children: [
                      Image.asset(AppImages.email_icon),
                      const CustomText(
                        left: 7,
                        text: "Emma.lhomme@ieseg.fr",
                        color: AppColors.whiteFont,
                        fontsize: Dimensions.fontSizeLarge,
                      ),
                    ],
                  ),


                  ///-----------------------name text----------------------->
                  Row(
                    children: [
                      Image.asset(AppImages.instragramIcon),
                      const CustomText(
                        left: 7,
                        text: "Emma_.lm",
                        color: AppColors.whiteFont,
                        fontsize: Dimensions.fontSizeLarge,
                      ),
                    ],
                  ),



                  const SizedBox(height: 17,),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}