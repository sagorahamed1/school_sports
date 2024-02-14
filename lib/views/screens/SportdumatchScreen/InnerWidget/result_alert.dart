import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_images.dart';
import '../../../widgets/custom_text.dart';

class ResultAert extends StatelessWidget {
  const ResultAert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: AppConstants.lienDu,
              fontName: "Puritan",
              fontsize: 20.h,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            SizedBox(height: 20.h),
            CustomText(
              text: AppConstants.lienMatch,
              fontName: "Puritan",
              fontsize: 12.h,
              fontWeight: FontWeight.w400,
              color: const Color(0xff0097B2),
            ),
            SizedBox(height: 11.h),
            CustomText(
              text: AppConstants.resultats,
              fontName: "Puritan",
              fontsize: 21.h,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100.w,
                  height: 54.h,
                  color: const Color(0xffedf8f9),
                  child: Image.asset(
                    AppImages.rectangleBg1,
                    fit: BoxFit.fill,
                  ),
                ),
                CustomText(
                  text: 'VS',
                  fontName: "Margarine",
                  fontsize: 15.h,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                Container(
                  width: 100.w,
                  height: 54.h,
                  color: const Color(0xffedf8f9),
                  child: Image.asset(
                    AppImages.rectangleBg2,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomText(
                  text: '70',
                  fontName: "Puritan",
                  fontsize: 24.h,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                CustomText(
                  text: '57',
                  fontName: "Puritan",
                  fontsize: 16.h,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
