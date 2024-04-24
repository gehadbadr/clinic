import 'package:clinic/controller/files/person_file.controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/auth/custom_button.auth.dart';
import 'package:clinic/views/widgets/auth/custom_texttitle.auth.dart';
import 'package:clinic/views/widgets/files/custom_textfield.widgets.dart';
import 'package:clinic/views/widgets/files/drop_down_blood.dart';
import 'package:clinic/views/widgets/files/drop_down_gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PersonTabTwo extends StatelessWidget {
  PersonTabTwo({super.key});
  PersonFileControllerImp controller = Get.find<PersonFileControllerImp>();
  @override
  Widget build(BuildContext context) {
    return    Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.tabTwo,
              child: ListView(shrinkWrap: true, children: [
                // const LogoAuth(),
              //  SizedBox(height: 10.h),
                Row(
                  children: [
                    CustomTextTitle(
                      text: "patientFile".tr,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      '(${"person".tr})',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  "bloodcat".tr,
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BloodTypeDropdown(),
                  ],
                ),
                SizedBox(height: 5.h),

                Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: CustomTextFieldFile(
                              hint: "(90,140/60,90)".tr,
                              title: "pressure".tr,
                              controller: controller.pressure,
                              onClick: (value) {},
                              isNum: true,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: CustomTextFieldFile(
                              hint: "(70/110)".tr,
                              title: "sugar".tr,
                              controller: controller.sugar,
                              onClick: (value) {},
                              isNum: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

               // SizedBox(height: 20.h),
                Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: CustomTextFieldFile(
                              hint: "".tr,
                              title: "emergencytel".tr,
                              controller: controller.emergencyte1,
                              onClick: (value) {},
                              isNum: true,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: CustomTextFieldFile(
                              hint: "".tr,
                              title: "emergencytel2".tr,
                              controller: controller.emergencyte2,
                              onClick: (value) {},
                              isNum: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //SizedBox(height: 20.h),
                Row(
                  children: [
                    Text(
                      "${"history".tr}  ",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      child: Expanded(
                        child: Text(
                          "(${"historydetails".tr} )",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width / 2.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.primaryColor)),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            icon:  Icon(
                              Icons.upload_file_outlined,
                              color: AppColors.primaryColor,
                              size: 25.sp,
                            ),
                            onPressed: () {
                              controller.uploadFiles();
                            },
                          )),
                    ),
                  ],
                ),

                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.next();
                      },
                      child: Container(
                        height: 30.h,
                        width: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.primaryColor,
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: AppColors.whiteColor, fontSize: 18.sp),
                            )),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: AppColors.primaryColor,
                        )),
                    Container(
                      height: 30.h,
                      width: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.whiteColor,
                          border: Border.all(
                              color: AppColors.primaryColor, width: 2)),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.8,
                      child: CustomButtomAuth(
                          text: "sure".tr,
                          onPressed: () {
                            controller.personFile();
                          }),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
              ]),
            ),
          );
        }
}
