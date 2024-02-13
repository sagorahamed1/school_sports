import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';

class CircleCard extends StatelessWidget {
  final AssetImage image;
  const CircleCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 57.w,
      height: 57.w,
      decoration: BoxDecoration(
          color: AppColors.grayLight,
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.contain,
            image: image,
          )),
    );
  }
}
