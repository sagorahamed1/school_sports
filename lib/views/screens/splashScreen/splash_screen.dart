import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.logoscreenbg), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 217.h,
              ),
              Image.asset(
                AppImages.sharklogo,
                width: 346.w,
                height: 346.h,
              ),
              const Spacer(),
              Image.asset(
                AppImages.ux4logo,
                width: double.infinity,
                height: 44.h,
              ),
              SizedBox(
                height: 45.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
