import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:school_sports/utils/app_icons.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_text.dart';
import 'InnerWidget/circle_card.dart';
import 'InnerWidget/custom_alert_dialog.dart';
import 'InnerWidget/le_evenmentiel_alert.dart';
import 'InnerWidget/lo_communication_alert.dart';
import 'InnerWidget/two_alert.dart';

class NotreaventureScreen extends StatelessWidget {
  const NotreaventureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      //======================================> AppBar Section <====================================================
      appBar: AppBar(
        toolbarHeight: 35,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset(
              AppIcons.back_arrow,
              color: AppColors.whiteFont,
            )),
      ),
//==============================================================================================================
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.notreaventurebg),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 45.h),
                //==============================================> Description Section <======================================================================
                CustomText(
                  top: 16.h,
                  text: AppConstants.notreAventure,
                  fontName: "Margarine",
                  fontsize: 28.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 26.h),
                SizedBox(width: 68.w, child: const Divider()),
                SizedBox(height: 25.h),
                CustomText(
                  textAlign: TextAlign.start,
                  text: AppConstants.dans,
                  maxline: 4,
                  fontName: "Puritan",
                  fontsize: 13.h,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 30.h),
                CustomText(
                  textAlign: TextAlign.start,
                  text: AppConstants.dans1,
                  maxline: 8,
                  fontName: "Puritan",
                  fontsize: 13.h,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 30.h),
                CustomText(
                  textAlign: TextAlign.start,
                  text: AppConstants.dans2,
                  maxline: 5,
                  fontName: "Puritan",
                  fontsize: 13.h,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 31.h),
                SizedBox(width: 68.w, child: const Divider()),
                //=======================================================================================================================================================
                SizedBox(height: 47.h),
                CustomText(
                  text: AppConstants.lorganisation,
                  fontName: "Margarine",
                  fontsize: 25.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteLight,
                ),
                SizedBox(height: 24.h),

                //===============================================> Alert Dialog Section <=======================================

                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => const AlertDialog(
                              shape: Border(),
                              content: Padding(
                                padding: EdgeInsets.all(2),
                                child: CustomAlertDialog(),
                              ),
                            ));
                  },
                  //==================================================> leBureau  Section<=========================
                  child: CustomText(
                    text: AppConstants.leBureau,
                    fontName: "Puritan",
                    fontsize: 16.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteLight,
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  height: 80.w,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      // SizedBox(height: 10.h),
                      Positioned(
                        left: 0.w,
                        top: 0.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau1)),
                      ),
                      Positioned(
                        left: 65.w,
                        top: 20.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau2)),
                      ),
                      Positioned(
                        left: 132.w,
                        top: 10.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau3)),
                      ),
                      Positioned(
                        right: 65.w,
                        top: 20.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau4)),
                      ),
                      Positioned(
                        right: 0.w,
                        top: 0.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau5)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 34.h),
                //=====================================> lePole Communication Section <==========================

                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => const AlertDialog(
                              shape: Border(),
                              content: Padding(
                                padding: EdgeInsets.all(2),
                                child: LoCommunicationAlert(),
                              ),
                            ));
                  },
                  child: CustomText(
                    text: AppConstants.lePole,
                    fontName: "Puritan",
                    fontsize: 16.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteLight,
                  ),
                ),
                SizedBox(height: 13.h),
                SizedBox(
                  height: 80.w,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      // SizedBox(height: 10.h),
                      Positioned(
                        left: 60.w,
                        top: 0.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau6)),
                      ),
                      Positioned(
                        left: 132.w,
                        top: 20.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau7)),
                      ),
                      Positioned(
                        right: 60.w,
                        top: 0.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau8)),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 34.h),
                //=====================================> lePoleEvenm Section <==========================
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => const AlertDialog(
                              shape: Border(),
                              content: Padding(
                                padding: EdgeInsets.all(2),
                                child: LeEvenmentielAlert(),
                              ),
                            ));
                  },
                  child: CustomText(
                    text: AppConstants.lePoleEvenm,
                    fontName: "Puritan",
                    fontsize: 16.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteLight,
                  ),
                ),
                SizedBox(height: 13.h),
                SizedBox(
                  height: 80.w,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      // SizedBox(height: 10.h),
                      Positioned(
                        left: 60.w,
                        top: 0.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau9)),
                      ),
                      Positioned(
                        left: 132.w,
                        top: 20.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau10)),
                      ),
                      Positioned(
                        right: 60.w,
                        top: 0.h,
                        child: const CircleCard(
                            image: AssetImage(AppImages.lebureau11)),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 34.h),
                //=====================================> lePoleSports Section <==========================

                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              shape: const Border(),
                              content: Padding(
                                padding: const EdgeInsets.all(2),
                                child: TwoAlert(
                                  toptitle: AppConstants.lePoleSports,
                                  sectitle: AppConstants.respoGaspard,
                                  lastitle: AppConstants.membresJulie,
                                  image: const AssetImage(AppImages.lebureau12),
                                  image2: const AssetImage(AppImages.blackImg),
                                ),
                              ),
                            ));
                  },
                  child: CustomText(
                    text: AppConstants.lePoleSports,
                    fontName: "Puritan",
                    fontsize: 16.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteLight,
                  ),
                ),
                SizedBox(height: 13.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleCard(image: AssetImage(AppImages.lebureau12)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau13)),
                  ],
                ),
                SizedBox(height: 34.h),
                //=====================================> lePoleCompetition Section <==========================

                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              shape: const Border(),
                              content: Padding(
                                padding: const EdgeInsets.all(2),
                                child: TwoAlert(
                                  toptitle: AppConstants.lePoleCompetition,
                                  sectitle: AppConstants.respoEmma,
                                  lastitle: AppConstants.membresNoe,
                                  image: const AssetImage(AppImages.lebureau14),
                                  image2:
                                      const AssetImage(AppImages.lebureau15),
                                ),
                              ),
                            ));
                  },
                  child: CustomText(
                    text: AppConstants.lePoleCompetition,
                    fontName: "Puritan",
                    fontsize: 16.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteLight,
                  ),
                ),
                SizedBox(height: 13.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleCard(image: AssetImage(AppImages.lebureau14)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau15)),
                  ],
                ),
                SizedBox(height: 34.h),
                //=====================================> lePoleCompetition Section <==========================

                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              shape: const Border(),
                              content: Padding(
                                padding: const EdgeInsets.all(2),
                                child: TwoAlert(
                                  toptitle: AppConstants.lePoleSponsors,
                                  sectitle: AppConstants.respoVictoire,
                                  lastitle: AppConstants.membresCamille,
                                  image: const AssetImage(AppImages.lebureau16),
                                  image2:
                                      const AssetImage(AppImages.lebureau17),
                                ),
                              ),
                            ));
                  },
                  child: CustomText(
                    text: AppConstants.lePoleSponsors,
                    fontName: "Puritan",
                    fontsize: 16.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteLight,
                  ),
                ),
                SizedBox(height: 13.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleCard(image: AssetImage(AppImages.lebureau16)),
                    SizedBox(width: 9.w),
                    const CircleCard(image: AssetImage(AppImages.lebureau17)),
                  ],
                ),
                SizedBox(height: 25.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
