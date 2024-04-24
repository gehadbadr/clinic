
import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:clinic/core/localization/changelocal.dart';
import 'package:clinic/views/widgets/language/customButtomLang.widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("chooseLanguage".tr, style: TextStyle(fontSize: 25.sp)),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLang("ar");
                    Get.offNamed(AppRoutes.onBoarding) ; 
                  }),
                                const SizedBox(height: 20),

              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changeLang("en");
                    Get.offNamed(AppRoutes.onBoarding) ; 
                  }),
            ],
          )),
    );
  }
}