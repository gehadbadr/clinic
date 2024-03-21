import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/customAppBar.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:velocity_x/velocity_x.dart';

class ClinicProfile extends StatelessWidget {
  const ClinicProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColors.primaryColor,
          // appBar:
          
          //  PreferredSize(
          //     preferredSize: Size.fromHeight(60.0),
          //     child: CustomAppBar(
          //       bgColor: AppColors.primaryColor,
          //       onPressLeading: () {
          //         print('jfdvkfvvvvvvvvvvvvvvv');
          //         Navigator.pushNamed(context, AppRoutes.homepageScreen);
          //       },
          //     )),
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
                      margin: EdgeInsets.only(top: 100),
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
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.primaryColor,
                                ),
                                Text('   30 كيلو متر',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primaryColor)),
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
                                leading: Container(
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
                                trailing: Text(AppText.phones,
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor)),
                              ),
                              Divider(
                                color: AppColors.borderLine,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              ListTile(
                                leading: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: Icon(Icons.phone,
                                      color: AppColors.primaryColor),
                                ),
                                title: Text('0105555555',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor)),
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
                                leading: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: Icon(Icons.location_on_outlined,
                                      color: AppColors.primaryColor),
                                ),
                                title: Text("25 ش ابن السراج متفرع من وينجت",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor)),
                              ),
                              Divider(
                                color: AppColors.borderLine,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              ListTile(
                                leading: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: const Icon(Icons.access_time_rounded,
                                      color: AppColors.primaryColor),
                                ),
                                title: Text('من 10 ص الي 12 م',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor)),
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
            Positioned(
            top: 30,
            left: 20,
             child: IconButton(
                     onPressed: () {
                       
                      Navigator.pushNamed(context, AppRoutes.homepageScreen);
                     },
                     
                     icon: const Icon(
                       Icons.arrow_back,
                       color: AppColors.whiteColor,
                     ),
                   ),
           )
      ],
    );
  }
}
