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

class FutsallFScreen extends StatelessWidget {
  const FutsallFScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuerywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 35.h,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: SvgPicture.asset(AppIcons.back_arrow,color: AppColors.whiteFont,),
        )),
      ),
      ///--------------------------------body-------------------------------->
      body: Stack(
        children: [

          ///------------------------------background image------------------------->
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(AppImages.footballscreen_bgImage,fit: BoxFit.fill,),
          ),

          ///---------------------all code------------------->
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27,vertical: 20),
              child: Column(
                children: [

                  SizedBox(height: 35.h,),

                  ///--------------------------text nos sports-------------------------->
                  Align(
                    alignment: Alignment.center,
                    child: CustomShadowText(
                      bottom: 15.h,
                      text: "Futsall F",
                      fontName: "Margarine",
                      fontsize: 32.h,
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
                        fontName: "Puritan",
                        fontsize: 20.h,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteFont,
                      ),
                    ),
                  ),

                   SizedBox(height: 28.h,),



                  ///--------------------------long text lequips----------------------------->
                  CustomShadowText(
                    top: 20.h,
                    maxline: 20,
                    text: "lequipeSportivedefutsallFeminin".tr,
                    fontName: "Puritan",
                    fontsize: Dimensions.fontSizeDefault.h,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteFont,
                  ),


                  SizedBox(height: 37.h,),
                  ///----------------------------pespo text----------------------------->
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      bottom: 7.h,
                      top: 20.h,
                      maxline: 20,
                      text: "Respo : Camille Rochefort",
                      fontName: "Puritan",
                      fontsize: 14.h,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteFont,
                    ),
                  ),



                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      ///-------------------profile image--------------------->
                      Container(
                        margin: const EdgeInsets.only(left: 32),
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


                              CustomText(
                                left: 12.h,
                                bottom: 10.h,
                                top: 10.h,
                                maxline: 20,
                                text: "fc_barcelonada",
                                fontName: "Puritan",
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




                   SizedBox(height: 7.h,),

                  ///-----------------------email text----------------------->
                  Row(
                    children: [
                      Image.asset(AppImages.email_icon),
                      const CustomText(
                        left: 7,
                        text: "Camille.rochefort@ieseg.fr",
                        fontName: "Puritan",
                        color: AppColors.whiteFont,
                        fontsize: Dimensions.fontSizeExtraSmall,
                      ),
                    ],
                  ),
                   SizedBox(height: 5.h,),

                  ///-----------------------name text----------------------->
                  Row(
                    children: [
                      Image.asset(AppImages.instragramIcon),
                      const CustomText(
                        left: 7,
                        text: "Cam.rch",
                        fontName: "Puritan",
                        color: AppColors.whiteFont,
                        fontsize: Dimensions.fontSizeExtraSmall,
                      ),
                    ],
                  ),



                   SizedBox(height: 17.h,),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
