import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ClinicProfile extends StatelessWidget {
  const ClinicProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:Get.locale!.languageCode == "ar"?  Alignment.topRight : Alignment.topLeft,
      children: [
        Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                margin: const EdgeInsets.only(top: 25.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      // color: AppColors.cardBg,
                      //  height: MediaQuery.of(context).size.width < 450 ? 250.h : 300.h,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 100),
                      decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(200),
                              topRight: Radius.circular(200))),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 80.h,
                          ),
                          Text('متجر المصري للمستلزمات',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('   30 كيلو متر   ',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primaryColor)),
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.primaryColor,
                                ),
                              ]),
                          SizedBox(
                            height: 5.h,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              ListTile(
                                trailing: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: const Icon(Icons.phone,
                                      color: AppColors.primaryColor),
                                ),
                                leading: Text("phones".tr,
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor)),
                              ),
                              const Divider(
                                color: AppColors.borderLine,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              ListTile(
                                trailing: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: const Icon(Icons.phone,
                                      color: AppColors.primaryColor),
                                ),
                                title: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('0105555555',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackColor)),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                            ],
                          )
                              .box
                              .color(AppColors.whiteColor)
                              .roundedSM
                              .shadowSm
                              .margin(const EdgeInsets.all(12))
                              //  .padding(const EdgeInsets.symmetric(horizontal: 16))
                              .make(),
                          SizedBox(
                            height: 25.h,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              ListTile(
                                trailing: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: const Icon(Icons.location_on_outlined,
                                      color: AppColors.primaryColor),
                                ),
                                title: Text("25 ش ابن السراج متفرع من وينجت",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor)),
                              ),
                              const Divider(
                                color: AppColors.borderLine,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              ListTile(
                                trailing: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: const Icon(Icons.access_time_rounded,
                                      color: AppColors.primaryColor),
                                ),
                                title: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('من 10 ص الي 12 م',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.blackColor)),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                            ],
                          )
                              .box
                              .color(AppColors.whiteColor)
                              .roundedSM
                              .shadowSm
                              .margin(const EdgeInsets.all(12))
                              //  .padding(const EdgeInsets.symmetric(horizontal: 16))
                              .make(),
                          SizedBox(
                            height: 100.h,
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, 70),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          ImagesPath.clinicProfile,
                          // imageUrl: ImagesPath.clinicProfile,
                          // errorWidget: (context, url, error) =>
                          //     const Icon(Icons.error),
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: -150,
            left: -290,
            child: Container(
              //  color: AppColors.borderLine ,
              width: 410.w,
              height: 350.h,

              decoration: BoxDecoration(
                color: AppColors.whiteColor.withOpacity(0.2),
                borderRadius: const BorderRadius.all(
                  Radius.circular(150),
                ),
              ),
            )),
         
          Padding(
            padding: const EdgeInsets.only(top:20.0,right: 20,left: 20),
            child: IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.homepageScreen);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        // )
      ],
    );
  }
}
