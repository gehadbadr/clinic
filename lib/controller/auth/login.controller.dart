
import 'package:flutter/cupertino.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';
abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}


class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController phone;
  late TextEditingController password;

  @override
  login() {
    OverlayLoadingProgress.start();
      var formdata = formstate.currentState;
    if (formdata!.validate()) {
    Get.offNamed(AppRoutes.fileCategory);
OverlayLoadingProgress.stop();
      print("Valid");
    } else {
      print("Not Valid");

      OverlayLoadingProgress.stop();
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signupScreen);
  }

  @override
  void onInit() {
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetScreen);
  }
}