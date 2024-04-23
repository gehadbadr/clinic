import 'package:clinic/controller/files/company_file.controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBarSimple.widgets.dart';
import 'package:clinic/views/widgets/auth/custom_button.auth.dart';
import 'package:clinic/views/widgets/auth/custom_texttitle.auth.dart';
import 'package:clinic/views/widgets/files/custom_textfield.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompanyFile extends StatelessWidget {
  const CompanyFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBarSimpleWibget(
              onPressLeading: () => Get.back(),
            )),
        body: SafeArea(
            child: GetBuilder<CompanyFileControllerImp>(builder: (controller) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(children: [
                // const LogoAuth(),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    CustomTextTitle(
                      text: "patientFile".tr,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      '(${"company".tr})',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),

                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: CustomTextFieldFile(
                        hint: "02147589632145".tr,
                        title: "nationalId".tr,
                        controller: controller.nationalId,
                        onClick: (value) {},
                        isNum: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "campanyCode".tr,
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10.h),
                        OtpTextField(
                          textStyle: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          contentPadding: const EdgeInsets.all(5),
                          fieldWidth: 40.0.w,
                          fieldHeight: 40.0.h,
                          borderRadius: BorderRadius.circular(5),
                          numberOfFields: 5,
                          borderColor: AppColors.primaryColor,
                          enabledBorderColor: AppColors.primaryColor,
                          focusedBorderColor: AppColors.primaryColor,
                          showFieldAsBox: true,
                          onCodeChanged: (String code) {},
                          onSubmit: (String verificationCode) {
                            // controller.goToHomePage();
                          }, // end onSubmit
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "clientCode".tr,
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10.h),
                        OtpTextField(
                          textStyle: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                          contentPadding: const EdgeInsets.all(5),
                          fieldWidth: 40.0.w,
                          fieldHeight: 40.0.h,
                          borderRadius: BorderRadius.circular(5),
                          numberOfFields: 5,
                          borderColor: AppColors.primaryColor,
                          enabledBorderColor: AppColors.primaryColor,
                          focusedBorderColor: AppColors.primaryColor,
                          showFieldAsBox: true,
                          onCodeChanged: (String code) {},
                          onSubmit: (String verificationCode) {
                            // controller.goToHomePage();
                          }, // end onSubmit
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: CustomButtomAuth(
                          text: "sure".tr,
                          onPressed: () {
                            controller.campanyFile();
                          }),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
              ]),
            ),
          );
        })));
  }
}
