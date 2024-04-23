import 'package:flutter/material.dart';
import 'package:clinic/core/consts/consts.dart';

abstract class AppThemes {
  static  ThemeData themeEnglish = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
  // fontFamily: "PlayfairDisplay",
  // textTheme: const TextTheme(
  //           headline1: TextStyle(
  //               fontWeight: FontWeight.bold,
  //               fontSize: 22,
  //               color: AppColors.darkFontGrey),
  //           headline2: TextStyle(
  //               fontWeight: FontWeight.bold,
  //               fontSize: 26,
  //               color: AppColors.darkFontGrey),
  //           bodyText1: TextStyle(
  //               height: 2,
  //               color: AppColors.fontGrey,
  //               fontWeight: FontWeight.bold,
  //               fontSize: 14),
  //                    bodyText2: TextStyle(
  //               height: 2,
  //               color: AppColors.fontGrey,
  //               fontSize: 14))
  );

  static  ThemeData themeArabic= ThemeData(
      fontFamily: "Archivo",
              
              colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color(0xff0070CD),
                  primary: const Color(0xff0070CD),
                  secondary: const Color(0xff0070CD),
                ),              useMaterial3: true,
  // textTheme: const TextTheme(
  //           headline1: TextStyle(
  //               fontWeight: FontWeight.bold,
  //               fontSize: 22,
  //               color: AppColors.darkFontGrey),
  //           headline2: TextStyle(
  //               fontWeight: FontWeight.bold,
  //               fontSize: 26,
  //               color: AppColors.darkFontGrey),
  //           bodyText1: TextStyle(
  //               height: 2,
  //               color: AppColors.fontGrey,
  //               fontWeight: FontWeight.bold,
  //               fontSize: 14),
  //                    bodyText2: TextStyle(
  //               height: 2,
  //               color: AppColors.fontGrey,
  //               fontSize: 14))
  );


}
