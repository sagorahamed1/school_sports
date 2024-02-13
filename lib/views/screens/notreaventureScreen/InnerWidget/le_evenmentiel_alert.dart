import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_sports/views/screens/notreaventureScreen/InnerWidget/squer_card.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_images.dart';
import '../../../widgets/custom_text.dart';

class LeEvenmentielAlert extends StatelessWidget {
  const LeEvenmentielAlert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: AppConstants.lePoleEvenm,
              fontName: "Margarine",
              fontsize: 20.h,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            SizedBox(height: 20.h),
            CustomText(
              text: AppConstants.respoSarah,
              fontName: "Puritan",
              fontsize: 11.h,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            SizedBox(height: 3.h),
            Column(
              children: [
                const SquerCard(
                  image: AssetImage(AppImages.lebureau10),
                  color: Color(0xffcbc7c4),
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
            SizedBox(height: 17.h),
            CustomText(
              text: AppConstants.membresDiane,
              fontName: "Puritan",
              fontsize: 11.h,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            SizedBox(height: 3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const SquerCard(
                      image: AssetImage(AppImages.lebureau9),
                      color: Color(0xffbcbebe),
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
                Column(
                  children: [
                    const SquerCard(
                      image: AssetImage(AppImages.lebureau11),
                      color: Color(0xffbcbebe),
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
          ],
        ),
      ),
    );
  }
}
