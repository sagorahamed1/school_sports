import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_sports/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final FormFieldValidator? validator;

  const CustomTextField({
    super.key,
    required this.title,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 52.h,
      child: TextFormField(
        style: const TextStyle(color: AppColors.whiteLight),
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          hintText: title,
          hintStyle: const TextStyle(color: AppColors.whiteLight),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide:
                const BorderSide(width: 2.0, color: AppColors.whiteLight),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide:
                const BorderSide(width: 2.0, color: AppColors.whiteLight),
          ),
        ),
      ),
    );
  }
}
