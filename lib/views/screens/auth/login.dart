import 'package:clinic/controller/auth/login.controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/core/functions/alertexitapp.dart';
import 'package:clinic/views/widgets/auth/custom_button.auth.dart';
import 'package:clinic/views/widgets/auth/custom_footer.auth.dart';
import 'package:clinic/views/widgets/auth/custom_texttitle.auth.dart';
import 'package:clinic/views/widgets/custom_textfield.widgets.dart';
import 'package:clinic/views/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
       body: WillPopScope(
          onWillPop: alertExitApp,
          child: SafeArea(
              child: GetBuilder<LoginControllerImp>(
                builder: (controller) {
                  return Container(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                            child: Form(
                  key: controller.formstate,
                  child: ListView(children: [
                    // const LogoAuth(),
                    SizedBox(height: 10.h),
                    CustomTextTitle(
                      text: "login".tr,
                    ),
                    SizedBox(height: 20.h),
                    CustomFooterAuth(
                        longText: "creatNewAccount".tr,
                        shortText: "register".tr,
                        onPressed: () {
                          controller.goToSignUp();
                        }),
                  
                    SizedBox(height: 20.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        logoWidget(),
                      ],
                    ),
                    SizedBox(height: 40.h),
                  
                  
                    CustomTextField(
                      hint: "phoneHint".tr,
                      icon: Icons.email_outlined,
                      title: "phone".tr,
                      controller: controller.phone,
                      isPass: false,
                      onClick: (value) {},
                      isNum: true,
                    ),
                    SizedBox(height: 20.h),
                  
                    CustomTextField(
                      hint: "passwordHint".tr,
                      icon: Icons.lock_outline,
                      title: "password".tr,
                      isPass: true,
                      onClick: (value) {},
                      passwordIcon: true,
                      controller: controller.password,
                      isNum: false,
                  
                    ),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.goToForgetPassword();
                          },
                          child: Text(
                            "forgetPass".tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.secondryColor,
                                fontSize: 15.sp),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                  
                    CustomButtomAuth(
                        text: "login".tr,
                        onPressed: () {
                          controller.login();
                        }),
                    SizedBox(height: 20.h),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "skiplogin".tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                              fontSize: 15.sp),
                        )
                      ],
                    )
                  ]),
                            ),
                          );
                }
              )),
        ));
  }
}
