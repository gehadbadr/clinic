import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBar.widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondryColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBarWibget(
            currentIndex: 11,
            onPressLeading: () {
              Get.toNamed(AppRoutes.homepageScreen);
            },
            bgColor: AppColors.secondryColor,
          )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                ),
                Container(
                    padding: EdgeInsets.only(top: 100.h, left: 20, right: 20),
                    constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height * 2 / 3),
                    decoration: const BoxDecoration(
                        color: AppColors.productBg,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    // padding:  const EdgeInsets.all(20),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 2)),
                                child: Column(
                                  children: [
                                    Row(children: [Text("kjkhjhzf")]),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Container(
                                      color: Colors.amber,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            VxRating(
                                              size: 12.sp,
                                              count: 5,
                                              value: 5,
                                              onRatingUpdate: (String value) {},
                                            )
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: AppColors.primaryColor,
                                        width: 1)),
                                child: Column(
                                  children: [
                                    Row(children: [
                                      Text(
                                        "خيط 0 راوند 2",
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.blackColor),
                                      )
                                    ]),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Directionality(
                                            textDirection: TextDirection.ltr,
                                            child: VxRating(
                                              normalColor: AppColors.whiteColor,
                                              selectionColor:
                                                  AppColors.secondryColor,
                                              size: 20.sp,
                                              count: 5,
                                              value: 8,
                                              onRatingUpdate: (String value) {},
                                            ),
                                          )
                                        ])
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width - 50,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: AppColors.primaryColor, width: 1)),
                              child: Column(
                                children: [
                                  Row(children: [
                                    Text(
                                      "دواعي الأستخدام:",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primaryColor),
                                    )
                                  ]),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          "يوفر آلية تنفيذ الحجوزات بسلاسة شديدة، و ما يتبع الحجز من خطوات سواء لتأكيد الحجز.",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              color: AppColors.blackColor),
                                        ),
                                      ),
                                    )
                                  ]),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width - 50,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: AppColors.primaryColor, width: 1)),
                              child: Column(
                                children: [
                                  Row(children: [
                                    Text(
                                      " معلومات عن الصيدلية:",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primaryColor),
                                    )
                                  ]),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(children: [
                                    Text(
                                      "  اسم الصيدلية:",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primaryColor),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Text("متجر المصري للمستلزمات",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              color: AppColors.blackColor),
                                        ),
                                      ),
                                    )
                                  ]),
                                   SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(children: [
                                    Text(
                                      "  تبعد عنك:",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primaryColor),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child:Align (
                                          alignment: Alignment.center,
                                          child: Text("30 كيلومتر",
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                color: AppColors.blackColor),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0.h),
              padding: EdgeInsets.all(5.0.h),
              width: 250.w,
              height: 250.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: AppColors.whiteColor,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  ImagesPath.productProfile,
                  width: 250.w,
                  height: 250.w,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
