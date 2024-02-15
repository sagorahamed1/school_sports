import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:school_sports/utils/app_colors.dart';
import 'package:school_sports/utils/app_images.dart';
import 'package:school_sports/views/widgets/custom_shadow_text.dart';
import 'package:school_sports/views/widgets/custom_text.dart';
import '../../../controller/nos_sports_controller.dart';
import '../../../utils/app_icons.dart';

class NosSportsScreen extends StatelessWidget {
  NosSportsScreen({super.key});

  NosSportsController controller = Get.put(NosSportsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      body: SingleChildScrollView(
        child: Stack(
          children: [
            ///------------------------------background image------------------------->
            Container(
              width: double.infinity,
              child: Image.asset(
                AppImages.NosSportsBg,
                fit: BoxFit.cover,
              ),
            ),

            ///---------------------all code------------------->
            Column(
              children: [
                ///--------------------------text nos sports-------------------------->
                ///
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Container(
                              padding:  EdgeInsets.only(left: 25,top: 40.h),
                              child: SvgPicture.asset(
                                AppIcons.back_arrow,
                                color: AppColors.whiteFont,
                              ))),
                ),


                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    top: 10.h,
                    text: "NosSports".tr,
                    fontName: "Margarine",
                    fontsize: 36.h,
                    color: AppColors.whiteFont,
                  ),
                ),

                Obx(() => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 37.w),
                  child: Container(
                    height: 1440.h,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.nosSportsList.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 34,
                          mainAxisSpacing: 34),
                      itemBuilder: (context, index) {
                        var nosSports = controller.nosSportsList[index];
                        return GestureDetector(
                          onTap: () {
                            Get.to(nosSports["page"]);
                          },
                          child: Container(
                            width: 146.w,
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                    AssetImage(nosSports["sportsImage"]),
                                    fit: BoxFit.cover)),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      child: CustomShadowText(
                                        text: "${nosSports["sportsName"]}",
                                        fontsize: 26.h,
                                        fontWeight: FontWeight.w700,
                                        fontName: "Puritan",
                                      )),
                                  Flexible(
                                      child: CustomShadowText(
                                        text: "${nosSports["sportsTitle"]}",
                                        fontsize: 10.h,
                                        fontWeight: FontWeight.w700,
                                        fontName: "Puritan",
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}