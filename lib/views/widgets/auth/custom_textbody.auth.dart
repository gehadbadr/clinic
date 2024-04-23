import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextBody extends StatelessWidget {
  final String text;
  const CustomTextBody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
             // fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
              fontSize: 16.sp)),
    );
  }
}
