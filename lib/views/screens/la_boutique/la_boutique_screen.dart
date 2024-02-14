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

class LaBoutiqueScreen extends StatelessWidget {
  LaBoutiqueScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 60.h,
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

                  SizedBox(height: 50.h,),

                  ///--------------------------text la boutique-------------------------->
                  Align(
                    alignment: Alignment.center,
                    child: CustomText(
                      bottom: 15.h,
                      text: "La Boutique",
                      fontName: "Margarine",
                      fontsize: 28.h,
                      color: AppColors.whiteFont,
                    ),
                  ),


                  ///-----------------------prend ta licence container----------------------->
                  Container(
                    width: 320.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.prendtaicenceImage,),fit: BoxFit.fill
                        )
                    ),

                    child: Center(
                      child: CustomText(
                        top: 74.h,
                        bottom: 74.h,
                        text: "Prend ta licence",
                        color: AppColors.whiteFont,
                        fontsize: 32.h,
                        fontWeight: FontWeight.w400,
                        fontName: "Puritan",

                      ),
                    ),
                  ),

                  SizedBox(height: 121.h,),

                  ///-----------------------Prend ta tenue container----------------------->
                  Container(
                    width: 320.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.prendtatenue_Image,),fit: BoxFit.fill
                        )
                    ),

                    child: Center(
                      child: CustomText(
                        top: 74.h,
                        bottom: 74.h,
                        text: "Prend ta tenue",
                        color: AppColors.whiteFont,
                        fontsize: 32.h,
                        fontWeight: FontWeight.w400,
                        fontName: "Puritan",

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
