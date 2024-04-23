import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class logoWidget extends StatelessWidget {
  const logoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/app_logo.png',
          height: 60,
          width: 60,
          fit: BoxFit.fill,
        ),
        SizedBox(
            // width: 5.w,
            ),
        Text("عيادة".tr,
            style: TextStyle(
                fontFamily: "ArefRuqaa",
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 30.sp)),
      ],
    );
  }
}
