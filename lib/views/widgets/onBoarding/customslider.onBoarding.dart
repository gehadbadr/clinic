import 'package:clinic/controller/onboarding_controller.dart';
import 'package:clinic/core/localization/changelocal.dart';
import 'package:clinic/views/widgets/logo.dart';
import 'package:clinic/views/widgets/onBoarding/custombutton.onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/data/datasource/static/static.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  CustomSliderOnBoarding({Key? key}) : super(key: key);
 // var localeController = Get.find<LocaleController>();
  //var local = localeController.checkLang;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => SingleChildScrollView(
              child: Stack(
                // alignment: Alignment.topCenter,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment:Get.locale!.languageCode == "ar"? Alignment.topLeft: Alignment.topRight,
                        children: [
                          Image.asset(
                            onBoardingList[i].image!,
                            height: MediaQuery.of(context).size.height / 2.1,
                            width: MediaQuery.of(context).size.width - 30.w,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              child: Text('skip'.tr),
                              onTap: () {
                                Get.offAllNamed(AppRoutes.signupScreen);
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Text(onBoardingList[i].title!,
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.sp)),
                      SizedBox(height: 10.h),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          constraints: BoxConstraints(minHeight: 150.h),
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            onBoardingList[i].body!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                //height: 2,
                                color: AppColors.blackColor,
                                fontSize: 18.sp),
                          )),
                      //  Spacer(),
                      CustomButtonOnBoarding(index: i)
                    ],
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 3 + 20,
                    child: const Padding(
                        padding: EdgeInsets.only(top: 50.0),
                        child: logoWidget()),
                  )
                ],
              ),
            ));
  }
}
