import 'package:flutter/cupertino.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();

 late TextEditingController password; 
  late TextEditingController repassword; 

  @override
  resetpassword() {
    OverlayLoadingProgress.start();
  var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
      OverlayLoadingProgress.stop();
    } else {
      print("Not Valid");
      OverlayLoadingProgress.stop();
    }
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoutes.resetpasswordScreen);
  }

  @override
  void onInit() { 
    password = TextEditingController(); 
    repassword = TextEditingController(); 
    super.onInit();
  }

  @override
  void dispose() { 
    password.dispose(); 
    repassword.dispose(); 
    super.dispose();
  }
}
