import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_sports/views/screens/notreaventureScreen/InnerWidget/squer_card.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_images.dart';
import '../../../widgets/custom_text.dart';

class TwoAlert extends StatelessWidget {
  final String toptitle;
  final String sectitle;
  final AssetImage image;
  final String lastitle;
  final AssetImage image2;

  TwoAlert({
    super.key,
    required this.toptitle,
    required this.sectitle,
    required this.image,
    required this.lastitle,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: toptitle,
              fontName: "Margarine",
              fontsize: 20.h,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            SizedBox(height: 20.h),
            CustomText(
              text: sectitle,
              fontName: "Puritan",
              fontsize: 11.h,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            SizedBox(height: 3.h),
            Column(
              children: [
                SquerCard(
                  image: image,
                  color: const Color(0xffcbc7c4),
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.emillogo),
                    SizedBox(width: 5.w),
                    CustomText(
                      text: AppConstants.anaeEmail,
                      fontName: "Puritan",
                      fontsize: 8.h,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.instalogo),
                    SizedBox(width: 5.w),
                    CustomText(
                      textAlign: TextAlign.start,
                      text: AppConstants.anaeEmail,
                      fontName: "Puritan",
                      fontsize: 8.h,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.h),
            CustomText(
              text: lastitle,
              fontName: "Puritan",
              fontsize: 11.h,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            SizedBox(height: 3.h),
            Column(
              children: [
                SquerCard(
                  image: image2,
                  color: const Color(0xffcbc7c4),
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.emillogo),
                    SizedBox(width: 5.w),
                    CustomText(
                      text: AppConstants.anaeEmail,
                      fontName: "Puritan",
                      fontsize: 8.h,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.instalogo),
                    SizedBox(width: 5.w),
                    CustomText(
                      textAlign: TextAlign.start,
                      text: AppConstants.anaeEmail,
                      fontName: "Puritan",
                      fontsize: 8.h,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
