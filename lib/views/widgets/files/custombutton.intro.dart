import 'package:clinic/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomButtonIntro extends GetView<OnBoardingControllerImp> {
  final String title;
  final Function()? onPressed;
  final Color bgColor;
  const CustomButtonIntro(
      {super.key, required this.title, this.onPressed, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.h),
      width: MediaQuery.of(context).size.width - 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: MaterialButton(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height < 500 ? 5.h : 20.h),
          textColor: AppColors.whiteColor,
          onPressed: onPressed,
          child: Text(
            title.tr,
            style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
          )),
    );
  }
}
