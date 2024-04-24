import 'package:clinic/controller/auth/signup.controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/core/functions/alertexitapp.dart';
import 'package:clinic/views/widgets/auth/custom_button.auth.dart';
import 'package:clinic/views/widgets/auth/custom_footer.auth.dart';
import 'package:clinic/views/widgets/auth/custom_texttitle.auth.dart';
import 'package:clinic/views/widgets/custom_textfield.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: SafeArea(
              child: GetBuilder<SignUpControllerImp>(builder: (controller) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Form(
                key: controller.formstate,
                child: ListView(children: [
                  SizedBox(height: 20.h),
                  CustomTextTitle(
                    text: "signup".tr,
                  ),
                  Stack(
                    alignment:Get.locale!.languageCode == "ar"? Alignment.bottomLeft :Alignment.bottomRight,
                    children: [
                      SizedBox(height: 10.h),
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColors.primaryColor,
                        size: 20.sp,
                      )
                    ],
                  ),
                  CustomFooterAuth(
                      longText: "alreadyHaveAccount".tr,
                      shortText: "login".tr,
                      onPressed: () {
                        controller.goToSignIn();
                      }),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hint: "nameHint".tr,
                    icon: Icons.email_outlined,
                    title: "name".tr,
                    controller: controller.username,
                    isPass: false,
                    isNum: false,
                    onClick: (value) {},
                  ),
                  CustomTextField(
                    hint: "phoneHint".tr,
                    icon: Icons.email_outlined,
                    title: "phone".tr,
                    controller: controller.phone,
                    isPass: false,
                    onClick: (value) {},
                    isNum: true,
                  ),
                  CustomTextField(
                    hint: "passwordHint".tr,
                    icon: Icons.lock_outline,
                    title: "password".tr,
                    isPass: true,
                    isNum: false,
                    onClick: (value) {},
                    passwordIcon: true,
                    controller: controller.password,
                  ),
                  CustomTextField(
                    hint: "repasswordHint".tr,
                    icon: Icons.lock_outline,
                    title: "repassword".tr,
                    isPass: true,
                    isNum: false,
                    onClick: (value) {},
                    passwordIcon: true,
                    controller: controller.repassword,
                  ),
                  CustomTextField(
                    hint: "ageHint".tr,
                    icon: Icons.email_outlined,
                    title: "age".tr,
                    controller: controller.age,
                    isPass: false,
                    onClick: (value) {},
                    isNum: true,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("gender".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.6,
                        child: ListTile(
                          title: Text('male'.tr,
                              style: TextStyle(fontSize: 16.sp)),
                          leading: Radio<int>(
                            activeColor: AppColors.primaryColor,
                            value: 1,
                            groupValue: controller.selectedOptionGender,
                            onChanged: (value) {
                              setState(() {
                                controller.selectedOptionGender = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.6,
                        child: ListTile(
                          title: Text('female'.tr,
                              style: TextStyle(fontSize: 16.sp)),
                          leading: Radio<int>(
                            activeColor: AppColors.primaryColor,
                            focusColor: AppColors.primaryColor,
                            hoverColor: AppColors.primaryColor,
                            value: 2,
                            groupValue: controller.selectedOptionGender,
                            onChanged: (value) {
                              setState(() {
                                controller.selectedOptionGender = value!;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomButtomAuth(
                      text: "signup".tr,
                      onPressed: () {
                        controller.signUp();
                      }),
                  const SizedBox(height: 30),
                ]),
              ),
            );
          })),
        ));
  }
}
