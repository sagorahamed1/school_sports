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

class DanseScreen extends StatelessWidget {
  const DanseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuerywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 35,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: SvgPicture.asset(AppIcons.back_arrow,color: AppColors.whiteFont,)),
      ),


      ///--------------------------------body-------------------------------->
      body: Stack(
        children: [

          ///------------------------------background image------------------------->
          Container(
            width: double.infinity,
            child: Image.asset(AppImages.dansescreenbgImage,fit: BoxFit.cover,),
          ),

          ///---------------------all code------------------->
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  SizedBox(height: 35.h,),

                  //
                  // Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: IconButton(onPressed: (){
                  //       Get.back();
                  //     }, icon: SvgPicture.asset(AppIcons.back_arrow,color: AppColors.whiteFont,))),

                  ///--------------------------text nos sports-------------------------->
                  Align(
                    alignment: Alignment.center,
                    child: CustomShadowText(
                      bottom: 15,
                      text: "Danse",
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
                        fontName: "Margarine",
                        fontsize: 18.h,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteFont,
                      ),
                    ),
                  ),

                  SizedBox(height: 32,),



                  ///--------------------------long the Cheerleading Text----------------------------->
                  CustomShadowText(
                    top: 20.h,
                    maxline: 20,
                    text: "Léquipesportive".tr,
                    fontName: "Margarine",
                    fontsize: 14.h,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteFont,
                  ),



                  SizedBox(height: 28,),

                  ///------------------------------divider and and instragram icon--------------------------------------->
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1.h,
                        width: 150.w,
                        color: AppColors.whiteFont,
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          ///--------------------------instragram text and icon------------------------------>
                          Image.asset(AppImages.instragramIcon),


                          CustomShadowText(
                            left: 12.h,
                            bottom: 10.h,
                            top: 10.h,
                            maxline: 20,
                            text: "ieseg_dancestudio",
                            fontName: "Margarine",
                            fontsize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.w700,
                            color: AppColors.whiteFont,
                          ),
                        ],
                      ),


                      Container(
                        height: 1.h,
                        width: 150.w,
                        color: AppColors.whiteFont,
                      ),
                    ],
                  ),

                  ///----------------------------pespo text----------------------------->
                  Align(
                    alignment: Alignment.center,
                    child: CustomShadowText(
                      bottom: 7.h,
                      top: 20.h,
                      maxline: 20,
                      text: "Respo : Victoire Allo",
                      fontName: "Margarine",
                      fontsize: 14.h,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteFont,
                    ),
                  ),



                  SizedBox(
                    width: 69.h,
                    height: 76.h,
                    child: Image.asset(AppImages.emmaLhomme,fit: BoxFit.cover,),
                  ),




                  SizedBox(height: 7,),

                  ///-----------------------email text----------------------->
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.email_icon),
                      const CustomText(
                        left: 7,
                        text: "Victoire.allo@ieseg.fr",
                        fontName: "Margarine",
                        color: AppColors.whiteFont,
                        fontsize: Dimensions.fontSizeExtraSmall,
                      ),
                    ],
                  ),


                  ///-----------------------name text----------------------->
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.instragramIcon),
                      const CustomText(
                        left: 7,
                        text: "Victoire.allo",
                        fontName: "Margarine",
                        color: AppColors.whiteFont,
                        fontsize: Dimensions.fontSizeExtraSmall,
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



