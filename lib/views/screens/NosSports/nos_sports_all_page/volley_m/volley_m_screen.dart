import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:school_sports/utils/app_icons.dart';
import 'package:school_sports/views/widgets/custom_shadow_text.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../../../widgets/custom_text.dart';

class VolleyMScreen extends StatelessWidget {
  const VolleyMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuerywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 35,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Padding(
              padding: const EdgeInsets.only(left: 17),
              child: SvgPicture.asset(
                AppIcons.back_arrow,
                color: AppColors.whiteFont,
              ),
            )),
      ),

      ///------------------------------------body-------------------------------->
      body: Stack(
        children: [
          ///------------------------------background image------------------------->
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              AppImages.volleyball_screen_bgImage,
              fit: BoxFit.cover,
            ),
          ),

          ///---------------------all code------------------->
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
              child: Column(
                children: [

                  SizedBox(
                    height: 35.h,
                  ),

                  ///--------------------------text nos sports-------------------------->
                  Align(
                    alignment: Alignment.center,
                    child: CustomShadowText(
                      bottom: 15.h,
                      text: "Volley M",
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
                        borderRadius: BorderRadius.circular(34.r)),
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

                  const SizedBox(
                    height: 6,
                  ),

                  ///--------------------------long text----------------------------->
                  CustomShadowText(
                    top: 20.h,
                    maxline: 20,
                    text: "lequipeSportiveDeVolleyFeminieMM".tr,
                    fontName: "Margarine",
                    fontsize: 15.h,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteFont,
                  ),


                  ///----------------------------Respo text----------------------------->
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      bottom: 7.h,
                      top: 20.h,
                      left: 6,
                      maxline: 20,
                      text: "Respo :\n Clarence Coeffic & Clément Bouquet",
                      fontName: "Puritan",
                      fontsize: 11.h,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteFont,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///------------------- first profile image--------------------->
                      Container(
                        margin: const EdgeInsets.only(left: 7),
                        width: 69.h,
                        height: 76.h,
                        child: Image.asset(
                          AppImages.emmaLhomme,
                          fit: BoxFit.cover,
                        ),
                      ),

                      ///----------------------scound profile image--------------------->
                      Container(
                        margin: const EdgeInsets.only(left: 28),
                        width: 69.h,
                        height: 76.h,
                        child: Image.asset(
                          AppImages.emmaLhomme,
                          fit: BoxFit.cover,
                        ),
                      ),

                      Column(
                        children: [
                          Container(
                            height: 1.h,
                            width: 130.w,
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
                                text: "les_volleurs_vb",
                                fontName: "Puritan",
                                fontsize: 12,
                                fontWeight: FontWeight.w700,
                                color: AppColors.whiteFont,
                              ),
                            ],
                          ),
                          Container(
                            height: 1.h,
                            width: 130.w,
                            color: AppColors.whiteFont,
                          ),
                        ],
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 7,
                  ),

                  ///----------------------- first email text----------------------->
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(AppImages.email_icon),
                          const CustomText(
                            left: 7,
                            text: "clarence.coeffic@ieseg.fr",
                            fontName: "Puritan",
                            color: AppColors.whiteFont,
                            fontsize: 8,
                          ),
                        ],
                      ),

                      ///------------------------scount email text--------------------------->
                      Row(
                        children: [
                          Image.asset(AppImages.email_icon),
                          const CustomText(
                            left: 7,
                            text: "clement.bouquet@ieseg.fr",
                            fontName: "Puritan",
                            color: AppColors.whiteFont,
                            fontsize: 8,
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///-----------------------first name text----------------------->
                      Row(
                        children: [
                          Image.asset(AppImages.instragramIcon),
                          const CustomText(
                            left: 7,
                            text: "clarencecoeffic",
                            fontName: "Puritan",
                            color: AppColors.whiteFont,
                            fontsize: 8,
                          ),
                        ],
                      ),

                      ///-----------------------scound name text--------------------------->
                      Row(
                        children: [
                          const SizedBox(width: 33,),
                          Image.asset(AppImages.instragramIcon),
                          const CustomText(
                            left: 7,
                            text: "clement_bql",
                            fontName: "Puritan",
                            color: AppColors.whiteFont,
                            fontsize: 8,
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
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
