import 'package:clinic/core/consts/consts.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {  

  late String verifycode  ; 

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetpasswordScreen);
  }

  @override
  void onInit() {  
    super.onInit();
  }

 
}