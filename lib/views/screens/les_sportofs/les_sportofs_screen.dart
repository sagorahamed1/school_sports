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
import '../nos_events/nos_events_screen.dart';

class LesSportofsScren extends StatelessWidget {
   LesSportofsScren({super.key});

  List matchList = [
    AppImages.gamePicture,
    AppImages.resling,
    AppImages.footballGame,
    AppImages.gamePicture,
    AppImages.footballGame,
    AppImages.resling,
    AppImages.footballGame,
    AppImages.gamePicture,
    AppImages.resling,
    AppImages.footballGame,
    AppImages.resling,
    AppImages.footballGame,
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black12,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 35,
        leading:
        IconButton(onPressed: (){
          Get.back();
        }, icon: Container(
            padding: EdgeInsets.only(left: 17.h),
            child: SvgPicture.asset(AppIcons.back_arrow,color: AppColors.whiteFont,))),
      ),


      ///--------------------------------body-------------------------------->
      body: Stack(
        children: [

          ///------------------------------background image------------------------->
          Container(
            width: double.infinity,
            child: Image.asset(AppImages.LesSportofs_screen_bgImage,fit: BoxFit.cover,),
          ),

          ///---------------------all code------------------->
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27,vertical: 20),
              child: Column(

                children: [

                  SizedBox(height: 35.h,),

                  ///--------------------------text-------------------------->
                  Align(
                    alignment: Alignment.center,
                    child: CustomText(
                      bottom: 15.h,
                      text: "Les Sportofs",
                      fontName: "Margarine",
                      fontsize: 28.h,
                      color: AppColors.whiteFont,
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(
                        text: "Album : Match X ",
                        fontName: "Puritan",
                        fontsize: Dimensions.fontSizeLarge.h,
                        color: AppColors.whiteFont,
                      ),


                      CustomText(
                        text: "Le Best Off",
                        fontName: "Puritan",
                        fontsize: Dimensions.fontSizeLarge.h,
                        color: AppColors.whiteFont,
                      ),
                    ],
                  ),




                  Container(
                    height: 520,
                    child: GridView.builder(
                      itemCount: matchList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 11,
                        mainAxisSpacing: 11,
                      ),
                      itemBuilder: (context, index) {
                        return Image.asset("${matchList[index]}");
                      },
                    ),
                  ),



                  GestureDetector(
                    onTap: (){
                      Get.to(NosEventsScreen());
                    },
                    child: Container(
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                      color: AppColors.whiteFont_BE8),
                      child: const CustomText(
                        fontName: "Puritan",
                        text: "Voir plus (Lien fb de l’album)",
                        top: 19,
                        bottom: 19,
                        color: AppColors.black,
                      ),
                    ),
                  ),



                  const SizedBox(height: 59,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
