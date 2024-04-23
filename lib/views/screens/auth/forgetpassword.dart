import 'package:clinic/controller/auth/forgetpassword.controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBarSimple.widgets.dart';
import 'package:clinic/views/widgets/auth/custom_button.auth.dart';
import 'package:clinic/views/widgets/auth/custom_textbody.auth.dart';
import 'package:clinic/views/widgets/auth/custom_texttitle.auth.dart';
import 'package:clinic/views/widgets/custom_textfield.widgets.dart';
import 'package:clinic/views/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _LoginState();
}

class _LoginState extends State<ForgetPassword> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
         appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child:AppBarSimpleWibget(onPressLeading: () => Get.back(),)
        ),
        body: SafeArea(
            child: GetBuilder<ForgetPasswordControllerImp>(
              builder: (controller) {
                return Container(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          child: Form(
                key: controller.formstate,
                child: ListView(children: [
                  SizedBox(height: 10.h),
                  CustomTextTitle(
                    text: "forgetPass".tr,
                  ),
                
                  SizedBox(height: 30.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      logoWidget(),
                    ],
                  ),
                  SizedBox(height: 40.h),
                
                  CustomTextBody(text: "resetBody".tr),
                  SizedBox(height: 20.h),
                
                  CustomTextField(
                    hint: "phoneHint".tr,
                    icon: Icons.email_outlined,
                    title: "phone".tr,
                    isPass: false,
                    onClick: (value) {},
                    isNum: true,
                    controller: controller.phone,

                  ),
                
                  SizedBox(height: MediaQuery.of(context).size.height /5),
                
                  CustomButtomAuth(
                      text: "send".tr,
                      onPressed: () {
                        controller.checkPhone();
                      }),
                  SizedBox(height: 20.h),
                ]),
                          ),
                        );
              }
            )));
  }
}
