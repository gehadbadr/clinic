import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBar.widgets.dart';
import 'package:flexible_grid_view/flexible_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
          preferredSize: const Size.fromHeight(60.0), child: AppBarWibget(currentIndex:10,onPressLeading: () {Navigator.pushNamed(context, AppRoutes.homepageScreen);},)),
    

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
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 10),
                  color: AppColors.cardBg,
                  height: MediaQuery.of(context).size.width < 450 ? 250.h : 300.h,
                  width: 120.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 30.h),
                        child: Image.asset(
                          ImagesPath.product,
                          fit: BoxFit.fill,
                          height: 60.h,
                          width: 80.w,
                        ),
                      ),
      
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(AppText.productTitle,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            // shadows: const [
                            //   Shadow(
                            //     blurRadius: 3.0,
                            //     color: AppColors.darkFontGrey,
                            //     offset: Offset(0, 0.0),
                            //   ),
                          //  ],
                          )),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text('${AppText.productDiscountPrice} ${AppText.pound} ',
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
                            ],)),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                          '${AppText.instead} ${AppText.productPrice} ${AppText.pound} ',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondryColor,
                                shadows: const [
                              Shadow(
                                blurRadius: 2.0,
                                color: AppColors.secondryColor,
                                offset: Offset(0.0, 0.0),
                              ),])),
                
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.only(left: 5, top: 5),
                  color: AppColors.secondryColor,
                  child: Text(' - ${AppText.percentage} % ',
                      style: TextStyle(
                          fontSize: 15.sp,
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
