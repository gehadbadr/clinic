import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/core/services/prefrences.services.dart';
import 'package:clinic/views/screens/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinic/core/consts/appTheme.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

@override
  void onInit() {
    _navigatetohome();
    // TODO: implement onInit
    super.onInit();
  }
 

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
       Get.offAllNamed(AppRoutes.languageScreen) ; 
  }



}
