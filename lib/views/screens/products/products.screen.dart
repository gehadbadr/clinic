import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBar.widgets.dart';
import 'package:flexible_grid_view/flexible_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBarWibget(
            currentIndex: 10,
            onPressLeading: () {
              Get.toNamed(AppRoutes.homepageScreen);
            },
            bgColor: AppColors.bgColor,
          )),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: FlexibleGridView(
          axisCount: MediaQuery.of(context).size.width < 450
              ? GridLayoutEnum.threeElementsInRow
              : GridLayoutEnum.fourElementsInRow,
          crossAxisSpacing: 7,
          mainAxisSpacing: 4,
          children: List.generate(
            20,
            (index) => Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  padding:
                      const EdgeInsets.all( 5.0,),
                  color: AppColors.cardBg,
                  // height:
                  //     MediaQuery.of(context).size.width < 450 ? 250.h : 350.h,
                  width: 120.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.productDetails);
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Image.asset(
                            ImagesPath.product,
                            fit: BoxFit.fill,
                            height: 60.h,
                            width: 80.w,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.productDetails);
                        },
                        child: Text("productTitle".tr,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text('${"productDiscountPrice".tr} ${"pound".tr} ',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondryColor,
                            shadows: const [
                              Shadow(
                                blurRadius: 2.0,
                                color: AppColors.secondryColor,
                                offset: Offset(0.0, 0.0),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                          '${"instead".tr} ${"productPrice".tr} ${"pound".tr} ',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondryColor,
                              shadows: const [
                                Shadow(
                                  blurRadius: 2.0,
                                  color: AppColors.secondryColor,
                                  offset: Offset(0.0, 0.0),
                                ),
                              ])),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.only(left: 5, top: 5),
                  color: AppColors.secondryColor,
                  child: Text(' - ${"percentage".tr} % ',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.whiteColor)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
