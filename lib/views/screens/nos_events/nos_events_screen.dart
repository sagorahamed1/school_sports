import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:school_sports/utils/dimensions.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_shadow_text.dart';
import '../../widgets/custom_text.dart';

class NosEventsScreen extends StatelessWidget {
  NosEventsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 35.h,
        leading:
        IconButton(onPressed: (){
          Get.back();
        }, icon: Container(
            padding: const EdgeInsets.only(left: 17),
            child: SvgPicture.asset(AppIcons.back_arrow,color: AppColors.whiteFont,))),
      ),


      ///--------------------------------body-------------------------------->
      body: Stack(
        children: [

          ///------------------------------background image------------------------->
          Container(
            width: double.infinity,
            child: Image.asset(AppImages.nosEventsScreen_bgImage,fit: BoxFit.cover,),
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
                    child: CustomText(
                      bottom: 15.h,
                      text: "Nos Events",
                      fontName: "Margarine",
                      fontsize: 28.h,
                      color: AppColors.whiteFont,
                    ),
                  ),
                  
                  
                  ///-----------------------wiuc container----------------------->
                  Container(
                    width: 320.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.wIUC,),fit: BoxFit.fill
                      )
                    ),

                    child: Center(
                      child: CustomShadowText(
                        top: 34.h,
                        bottom: 34.h,
                        text: "WIUC",
                        color: AppColors.whiteFont,
                        fontsize: 32.h,
                        fontWeight: FontWeight.w400,
                        fontName: "Puritan",

                      ),
                    ),
                  ),



                  CustomText(
                    top: 8.h,
                    bottom: 21.h,
                    text: "Billetterie Disponible ",
                    color: AppColors.whiteFont,
                    fontsize: Dimensions.fontSizeLarge.h,
                    fontWeight: FontWeight.w700,
                    fontName: "Puritan",

                  ),



                  ///----------------------journee sportive container------------------->
                  Container(
                    width: 320.w,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(45.r),
                      color: AppColors.black.withOpacity(0.5),
                      border: Border.all(color: Colors.black)
                    ),

                    child: Center(
                      child: Column(
                        children: [
                          CustomShadowText(
                            top: 30.h,
                            text: "Journée Sportive",
                            color: AppColors.whiteFont,
                            fontsize: 32.h,
                            fontWeight: FontWeight.w400,
                            fontName: "Puritan",

                          ),

                          CustomText(
                            text: "Disponible dans 1jour, 2heures",
                            color: AppColors.whiteFont,
                            fontsize: 16.h,
                            bottom: 3.h,
                            fontWeight: FontWeight.w400,
                            fontName: "Puritan",

                          ),
                        ],
                      ),
                    ),
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
