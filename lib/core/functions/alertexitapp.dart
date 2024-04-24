import 'dart:io';
import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "alert".tr,
      titleStyle:const  TextStyle(color: AppColors.primaryColor , fontWeight: FontWeight.bold),
      middleText: "doYouWantExit".tr,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColors.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child: Text("sure".tr,style: const TextStyle(color:AppColors.whiteColor))),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColors.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child: Text("cancel".tr,style: const TextStyle(color:AppColors.whiteColor),))
      ]);
  return Future.value(true);
}