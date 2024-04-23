import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/core/functions/alertexitapp.dart';
import 'package:clinic/views/widgets/files/custombutton.intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FileCategory extends StatelessWidget {
  const FileCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: SafeArea(
              child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  Text("patientFile".tr,
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.sp)),
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomButtonIntro(
                    title: 'person'.tr,
                    bgColor: AppColors.primaryColor,
                    onPressed: () {Get.toNamed(AppRoutes.personFile);},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButtonIntro(
                    title: 'company'.tr,
                    bgColor: AppColors.secondryColor,
                    onPressed: () {Get.toNamed(AppRoutes.companyFile);},
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}
