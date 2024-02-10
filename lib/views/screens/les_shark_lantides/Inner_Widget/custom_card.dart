import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color bgColor;
  final VoidCallback onpress;
  const CustomCard({
    super.key,
    required this.title,
    required this.textColor,
    required this.bgColor,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: double.infinity,
        height: 74.w,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(8.h)),
        child: Center(
          child: CustomText(
            text: title,
            fontName: 'Margarine',
            fontsize: 17.w,
            fontWeight: FontWeight.w400,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
