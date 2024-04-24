import 'package:clinic/core/services/prefrences.services.dart';
import 'package:flutter/material.dart';
import 'package:clinic/core/consts/appTheme.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = AppThemes.themeEnglish;

  // changeLang(String langcode) {
  //   Locale locale = Locale(langcode);
  //   appTheme =
  //       langcode == "ar" ? AppThemes.themeArabic : AppThemes.themeEnglish;
  //   myServices.sharedPreferences.setString("lang", langcode);
  //   Get.changeTheme(appTheme);
  //   Get.updateLocale(locale);
  // }

    changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "ar" ? AppThemes.themeArabic : AppThemes.themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

 

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = AppThemes.themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = AppThemes.themeEnglish;
    } else {
      //  language = Locale(Get.deviceLocale!.languageCode);
      language = const Locale("ar");
      appTheme = AppThemes.themeEnglish;
    }
    super.onInit();
  }
}
