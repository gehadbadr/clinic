import 'package:flutter/material.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFooterAuth extends StatelessWidget {
  final String longText;
  final String shortText;
    final void Function()? onPressed;

  const CustomFooterAuth({super.key, required this.longText,required this.shortText,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
     // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(longText,style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 18.sp)),
        SizedBox(width: 2.w,)  ,                    
        InkWell(
          onTap: onPressed,
          child: Text(shortText,
              style:  TextStyle(
                  color: AppColors.primaryColor, fontWeight: FontWeight.bold,fontSize: 18.sp)),
        )
      ],
    );
  }
}
