import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onpress;
  final String title;
  const CustomButton({
    super.key,
    required this.title,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        width: 343.w,
        height: 52.h,
        decoration: const ShapeDecoration(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 2.0, color: AppColors.whiteLight))),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 15.h,
          ),
        ),
      ),
    );
  }
}
