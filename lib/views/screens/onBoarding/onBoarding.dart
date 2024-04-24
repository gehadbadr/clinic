
import 'package:clinic/controller/onboarding_controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/onBoarding/customslider.onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp()) ;
    return  Scaffold(
        backgroundColor: AppColors.bgColor,
        body: SafeArea(
          child: Column(children: [
            Expanded(
              child: CustomSliderOnBoarding(),
            ),
           
          ]),
        ));
  }
}