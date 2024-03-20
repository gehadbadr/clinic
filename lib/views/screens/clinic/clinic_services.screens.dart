import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/screens/products/products.screen.dart';

import 'package:clinic/views/widgets/clinic/catsCard.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';

class ClinicServices extends StatelessWidget {
  const ClinicServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
          padding: const EdgeInsets.all(8.8),
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  height: 180.h,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.clinicProfileScreen);
                    },
                    child: Image.asset(
                      ImagesPath.vector,
                      fit: BoxFit.fill,
                    ),
                  )),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoriesCard(
                      header1: AppText.filtering,
                      header2: AppText.leastModels,
                      link: AppText.shopping,
                      img: ImagesPath.cat1,
                      circleColor: AppColors.lightBlue,
                      bgColor: AppColors.lightBgBlue,
                      width: context.screenWidth / 2.2),
                  CategoriesCard(
                      header1: AppText.cofid19,
                      header2: AppText.temp,
                      link: AppText.shopping,
                      img: ImagesPath.cat4,
                      circleColor: AppColors.borderLine,
                      bgColor: AppColors.lightGrey,
                      width: context.screenWidth / 2.2),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CategoriesCard(
                  header1: AppText.blood,
                  header2: AppText.pressure,
                  link: AppText.shopping,
                  img: ImagesPath.cat3,
                  circleColor: AppColors.borderLine,
                  bgColor: AppColors.lightGrey,
                  width: context.screenWidth / 1.5),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoriesCard(
                      header1: AppText.sugar,
                      header2: AppText.masks,
                      link: AppText.shopping,
                      img: ImagesPath.cat10,
                      circleColor: AppColors.borderLine,
                      bgColor: AppColors.lightGrey,
                      width: context.screenWidth / 2.2),
                  CategoriesCard(
                      header1: AppText.operations,
                      header2: AppText.gloves,
                      link: AppText.shopping,
                      img: ImagesPath.cat2,
                      circleColor: AppColors.borderLine,
                      bgColor: AppColors.lightGrey,
                      width: context.screenWidth / 2.2),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    AppText.specialCategories,
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        3,
                        (index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.products);
                    },
                    child:Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.all(8.0),
                            height: 70.h,
                            width: 100.w,
                            decoration: const BoxDecoration(
                              color: AppColors.lightGrey,
                              //    boxShadow: BoxShadow()
                            ),
                            // child:SvgPicture.asset(
                            // ListsApp.specialCatsList[index + 3],
                            // fit: BoxFit.fill,
                            // height: 70.h,
                            // width: 80.w,)
                            child: Image.asset(
                              ListsApp.specialCatsList[index + 3],
                              fit: BoxFit.fill,
                              height: 70.h,
                              width: 80.w,
                            ))))
                            ),
              )
            ],
          )),
    );
  }
}
