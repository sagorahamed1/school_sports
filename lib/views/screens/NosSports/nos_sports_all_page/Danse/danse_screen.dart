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

                  ///--------------------------text danse-------------------------->
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
                        fontName: "Puritan",
                        fontsize: 20.h,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteFont,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),

                  ///--------------------------long the Cheerleading Text----------------------------->
                  CustomShadowText(
                    top: 20.h,
                    maxline: 20,
                    text: "Léquipesportive".tr,
                    fontName: "Puritan",
                    fontsize: 15.h,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteFont,
                  ),



                  const SizedBox(height: 28,),
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


                          CustomText(
                            left: 12.h,
                            bottom: 10.h,
                            top: 10.h,
                            maxline: 20,
                            text: "ieseg_dancestudio",
                            fontName: "Puritan",
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
                    child: CustomText(
                      bottom: 7.h,
                      top: 20.h,
                      maxline: 20,
                      text: "Respo : Victoire Allo",
                      fontName: "Puritan",
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


                  const SizedBox(height: 7,),
                  ///-----------------------email text----------------------->
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.email_icon),
                      const CustomText(
                        left: 7,
                        text: "Victoire.allo@ieseg.fr",
                        fontName: "Puritan",
                        color: AppColors.whiteFont,
                        fontsize: Dimensions.fontSizeExtraSmall,
                      ),
                    ],
                  ),

                   const SizedBox(height: 5,),
                  ///-----------------------name text----------------------->
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.instragramIcon),
                      const CustomText(
                        left: 7,
                        textAlign: TextAlign.start,
                        text: "Victoire.allo              ",
                        fontName: "Puritan",
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



