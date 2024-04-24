import 'package:flutter/cupertino.dart';
import 'package:clinic/core/classes/status_request.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/core/functions/handingData.dart';
import 'package:clinic/data/datasource/remote/auth/signup_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController username;
  // late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController repassword;
  late TextEditingController age;
  int selectedOptionGender = 1;

  // SignupData signupData = SignupData(Get.find());

  List data = [];

  late StatusRequest statusRequest;
  @override
  signUp() async {
    var formdata = formstate.currentState;
    OverlayLoadingProgress.start();
    if (password.text == repassword.text) {
      if (formdata!.validate()) {
        // Get.offNamed(AppRoutes.verfiyCodeSignUpScreen);
        // Get.delete<SignUpControllerImp>();
        statusRequest = StatusRequest.loading;
        var response = "";
        //   await signupData.postData(username.text, password.text, email.text);
        // print("=============================== Controller $response ");
        // statusRequest = HandlingData.handlingData(response);
        if (StatusRequest.success == statusRequest) {
          //  data.addAll(response['data']);
          Get.toNamed(AppRoutes.verfiyCodeSignUpScreen);
          OverlayLoadingProgress.stop();
        } else {
          Get.toNamed(AppRoutes.verfiyCodeSignUpScreen);
          OverlayLoadingProgress.stop();
          // Get.defaultDialog(
          //     title: "ُWarning",
          //     middleText: "Phone Number Or Email Already Exists");
          // statusRequest = StatusRequest.failure;
        }
        update();
        OverlayLoadingProgress.stop();
      } else {
        OverlayLoadingProgress.stop();
        print("Not Valid");
      }
    } else {
      OverlayLoadingProgress.stop();
       Get.snackbar("alert".tr,
               "errorRepassword".tr,
               icon: const Icon(
                              Icons.lock,
                              color: AppColors.primaryColor,
                             
                            ),
               snackPosition: SnackPosition.BOTTOM,
               backgroundColor: AppColors.primaryColor,
               borderRadius: 20,
               margin: const EdgeInsets.all(15),
               colorText: AppColors.whiteColor,
               duration: const Duration(seconds: 4),
               isDismissible: true,
               forwardAnimationCurve: Curves.easeOutBack,

                  );
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.loginScreen);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    //  email = TextEditingController();
    password = TextEditingController();
    repassword = TextEditingController();
    age = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    //  email.dispose();
    phone.dispose();
    password.dispose();
    repassword.dispose();
    age.dispose();
    super.dispose();
  }
}
