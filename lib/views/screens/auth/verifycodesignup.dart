import 'package:clinic/controller/auth/verfiycodesignup_controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBarSimple.widgets.dart';
import 'package:clinic/views/widgets/auth/custom_texttitle.auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VerifyCodeSignup extends StatelessWidget {
  const VerifyCodeSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBarSimpleWibget(
              onPressLeading: () => Get.back(),
            )),
        body: SafeArea(child:
            GetBuilder<VerifyCodeSignUpControllerImp>(builder: (controller) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              // key: controller.formstate,
              child: ListView(children: [
                SizedBox(height: 10.h),
                CustomTextTitle(
                  text: "verfiyCode".tr,
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "verfiyCodeBody".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.fontGrey, fontSize: 15.sp),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(() => Expanded(
                          child: Text(
                            "00:${controller.remainingTime} ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.fontGrey, fontSize: 15.sp),
                          ),
                        ))
                  ],
                ),
                SizedBox(height: 20.h),
                OtpTextField(
                  textStyle: TextStyle(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                  fieldWidth: 50.0.w,
                  borderRadius: BorderRadius.circular(10),
                  numberOfFields: 5,
                  borderColor: AppColors.darkFontGrey,
                  focusedBorderColor: AppColors.blackColor,
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {},
                  onSubmit: (String verificationCode) {
                    controller.goToSuccessSignUp();
                  }, // end onSubmit
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() => InkWell(
                          onTap: () {
                            if (controller.remainingTime == 0) {
                              controller.goToSignUp();
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor: AppColors.primaryColor,
                                content: Text(
                                  "${"pleaseWait".tr} ${controller.remainingTime} ${"pleaseWait2".tr}",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ));
                            }
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 100.w,
                            child: Expanded(
                              child: Text(
                                "resendVerfiyCode".tr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: controller.remainingTime == 0
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: controller.remainingTime == 0
                                        ? AppColors.primaryColor
                                        : AppColors.fontGrey,
                                    fontSize: 15.sp),
                              ),
                            ),
                          ),
                        ))
                  ],
                )
              ]),
            ),
          );
        })));
  }
}
