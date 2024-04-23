import 'package:flutter/cupertino.dart';
import 'package:clinic/core/classes/status_request.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/core/functions/handingData.dart';
import 'package:clinic/data/datasource/remote/auth/signup_data.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';

abstract class CompanyFileController extends GetxController {
  campanyFile();
  goToHomePage();
}

class CompanyFileControllerImp extends CompanyFileController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController nationalId;
  late TextEditingController email;


  // SignupData signupData = SignupData(Get.find());

  List data = [];

  late StatusRequest statusRequest;
  @override
  campanyFile() async {
    OverlayLoadingProgress.start();
    var formdata = formstate.currentState;
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
        Get.offNamed(AppRoutes.homepageScreen);
        OverlayLoadingProgress.stop();
      } else {
        Get.offNamed(AppRoutes.homepageScreen);
        // Get.defaultDialog(
        //     title: "ُWarning",
        //     middleText: "Phone Number Or Email Already Exists");
        // statusRequest = StatusRequest.failure;
        OverlayLoadingProgress.stop();
      }
      update();
      OverlayLoadingProgress.stop();
    } else {
      print("Not Valid");
      OverlayLoadingProgress.stop();
    }
  }

  @override
  goToHomePage() {
    Get.offNamed(AppRoutes.loginScreen);
  }

  @override
  void onInit() {
    nationalId = TextEditingController();
  
    super.onInit();
  }

  @override
  void dispose() {
  //  email.dispose();
    nationalId.dispose();
  
    super.dispose();
  }
}
