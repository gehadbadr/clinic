import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesCard extends StatelessWidget {
  final String header1;
  final String header2;
  final String link;
  final String img;
  final Color circleColor;
  final Color bgColor;
  final double width;
  const CategoriesCard({
    super.key,
    required this.header1,
    required this.header2,
    required this.link,
    required this.img,
    required this.circleColor,
    required this.bgColor,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
        //  height: 100,
       width: width,
        decoration:  BoxDecoration(
          color: bgColor,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: AppColors.borderLine,
                blurRadius: 20.0,
                spreadRadius: -20.0,
                offset: Offset(0.0, 20.0)
            )
          ],
          //    boxShadow: BoxShadow()
        ),
        child: Stack(
          children: [
            Positioned(
                top: -40,
                right: -40,
                child: Container(
                  
                //  color: AppColors.borderLine ,
                  width:  width== context.screenWidth/1.5? 100.w:90.w,
                  height: width== context.screenWidth/1.5?100.h:90.h,    
            
                  decoration: BoxDecoration(
                    color: circleColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(150),
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      header1,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      textScaleFactor: ScreenUtil().textScaleFactor,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      header2,
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      textScaleFactor: ScreenUtil().textScaleFactor,
                    ),
                    InkWell(
                      //  onTap: ,
                      child: Text(
                        link,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.secondryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.secondryColor),
                        textScaleFactor: ScreenUtil().textScaleFactor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    child: Image.asset(
                  img,
                  fit: BoxFit.fill,
                  width: width ==  context.screenWidth/1.5? 100.w:35.w,
                  height: 70.h,
                )
                
                // child:SvgPicture.asset(
                //   img,
                //   fit: BoxFit.fill,
                //   width: width ==  context.screenWidth/1.5? 100.w:35.w,
                //   height: 70.h,)

                ),
              ],
            ),
          ],
        ));
  }
}
