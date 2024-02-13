
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_colors.dart';

class CustomShadowText extends StatelessWidget {
  const CustomShadowText(
      {super.key,
        this.maxline,
        this.fontName,
        this.textAlign = TextAlign.center,
        this.left = 0,
        this.right = 0,
        this.top = 0,
        this.bottom = 0,
        this.fontsize = 14,
        this.fontWeight = FontWeight.w400,
        this.color = Colors.white,
        this.text = ""});

  final double left;
  final double right;
  final double top;
  final double bottom;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final TextAlign textAlign;
  final int? maxline;
  final String? fontName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: left.w, right: right.w, top: top.h, bottom: bottom.h),
      child: Text(
        textAlign: textAlign,
        text,
        maxLines: maxline,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: fontsize.sp,
            fontFamily: "$fontName",
            fontWeight: fontWeight,
            height: 1.25,
            color: color,
            shadows: const [
              Shadow( // bottomLeft
                  offset: Offset(-1.5, -1.5),
                  color: Color(0xFF584123)
              ),
              Shadow( // bottomRight
                  offset: Offset(1.50, -1.5),
                  color: Color(0xFF584123)
              ),
              Shadow( // topRight
                  offset: Offset(1.5, 1.5),
                  color: Color(0xFF584123)
              ),
              Shadow( // topLeft
                  offset: Offset(-1.5, 1.5),
                  color: Color(0xFF584123)
              ),
            ]
        ),
      ),
    );
  }
}