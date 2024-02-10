import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_sports/utils/app_colors.dart';
import 'package:school_sports/utils/app_constants.dart';
import 'package:school_sports/utils/app_images.dart';
import 'package:school_sports/views/widgets/custom_text.dart';

class NosSportsScreen extends StatelessWidget {
  const NosSportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Stack(
          children: [

            ///------------------------------background image------------------------->
            Container(
              width: double.infinity,
              child: Image.asset(AppImages.NosSportsBg,fit: BoxFit.cover,),
            ),

            ///---------------------all code------------------->
            Column(

              children: [

                ///--------------------------text nos sports-------------------------->
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    top: 74.h,
                    text: AppConstants.nosSports,
                    fontName: "Margarine",
                    fontsize: 36.h,
                    color: AppColors.whiteFont,
                  ),
                ),







              ],
            ),
          ],
        ),
      ),
    );
  }
}
