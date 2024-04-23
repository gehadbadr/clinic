import 'package:clinic/controller/auth/forgetpassword.controller.dart';
import 'package:clinic/controller/auth/login.controller.dart';
import 'package:clinic/controller/auth/signup.controller.dart';
import 'package:clinic/controller/auth/verfiycodesignup_controller.dart';
import 'package:clinic/controller/files/company_file.controller.dart';
import 'package:clinic/controller/files/person_file.controller.dart';
import 'package:get/get.dart';

class Mybinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(()=>SignUpControllerImp(),fenix: true);
    Get.lazyPut(()=>LoginControllerImp(),fenix:true);
    Get.lazyPut(()=>ForgetPasswordControllerImp(),fenix:true);
    Get.lazyPut(()=>VerifyCodeSignUpControllerImp(),fenix:true);
    Get.lazyPut(()=>CompanyFileControllerImp(),fenix:true);
    Get.lazyPut(()=>PersonFileControllerImp(),fenix:true);


  }
}
