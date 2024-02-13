import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';

class SquerCard extends StatelessWidget {
  final AssetImage image;
  final Color color;
  const SquerCard({
    super.key,
    required this.image, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.w,
      height: 65.w,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: image,
          )),
    );
  }
}
