import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height /3,
            ),
            Image.asset(
              ImagesPath.icSplach,
              width: 200.w,
              height: 200.h,
            ),
          ],
        ),
      )),
    );
  }
}
