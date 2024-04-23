import 'package:flutter/cupertino.dart';
import 'package:clinic/core/classes/status_request.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/core/functions/handingData.dart';
import 'package:clinic/data/datasource/remote/auth/signup_data.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';

abstract class PersonFileTwoController extends GetxController {
  personFile();
  goToHomePage();
  uploadFiles();
  goToPersonFile();
}

class PersonFileTwoControllerImp extends PersonFileTwoController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController pressure;
  late TextEditingController sugar;
  late TextEditingController email;
  late TextEditingController emergencyte1;
  late TextEditingController emergencyte2;

  // SignupData signupData = SignupData(Get.find());

  List data = [];

  late StatusRequest statusRequest;
  @override
  personFile() async {
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
        // Get.offNamed(AppRoutes.verfiyCodeSignUpScreen);
        OverlayLoadingProgress.stop();
        Get.toNamed(AppRoutes.homepageScreen);
      } else {
        Get.toNamed(AppRoutes.homepageScreen);
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
    pressure = TextEditingController();
    sugar = TextEditingController();
    emergencyte1 = TextEditingController();
    emergencyte2 = TextEditingController();

    super.onInit();
  }

  @override
  uploadFiles() {
    OverlayLoadingProgress.start();
    // TODO: implement uploadFiles
    throw UnimplementedError();
  }

   @override
  goToPersonFile() {
    Get.offNamed(AppRoutes.personFile);
  }

  @override
  void dispose() {
    //  email.dispose();

    pressure.dispose();
    sugar.dispose();
    emergencyte1.dispose();
    emergencyte2.dispose();

    super.dispose();
  }
}
