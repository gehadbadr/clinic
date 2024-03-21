import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBar.widgets.dart';
import 'package:clinic/views/widgets/customButton.widgets.dart';
import 'package:clinic/views/widgets/videos/vidoes.widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBarWibget(currentIndex: 5)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                  onPressed: () {},
                  icon:  Icon(
                    Icons.share_outlined,
                    color: AppColors.primaryColor,
                    size: 30.sp,
                  )),
              SizedBox(
                width: 10.w,
              ),
              InkWell(
                child: Image.asset(
                  ImagesPath.icShare,
                  width: 20.w,
                  height: 30.h,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(" كورس خاص  بفصائل الدم",
                  style: TextStyle(
                      fontFamily: "ArefRuqaa",
                      fontSize: 20.sp,
                      color: AppColors.blackColor)),
            ]),
            SizedBox(
              height: 5.h,
            ),
            const Divider(
              color: AppColors.secondryColor,
            ),
            SizedBox(
              height: 5.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Text(" ماذا ستتعلم",
                    style: TextStyle(
                        fontSize: 22.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  3,
                  (index) => Directionality(
                        textDirection: TextDirection.rtl,
                        child: ListTile(
                          title: Text(
                              "  لوريم إيبسوم طريقة لكتابة النصوص في النشر والتصميم الجرافيكي تستخدم بشكل شائع لتوضيح الشكل المرئي للمستند أو الخط ، دون الاعتماد على محتوى ذي معنى. ",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w700)),
                          leading: const Icon(
                            Icons.done,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      )),
            ),
            const Divider(
              color: AppColors.secondryColor,
            ),
            SizedBox(
              height: 5.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Text("  هذه المنصة تتضمن",
                    style: TextStyle(
                        fontSize: 22.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(" 12ساعة و38 دقيقة/45فيديو",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.access_time,
                      color: AppColors.blackColor,
                      size: 18.sp,
                    ),
                  ],
                )
                ),
                  SizedBox(
              height: 10.h,
            ),
            Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("تاريخ الإنتاج:31/12/2023",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.calendar_today_outlined,
                      color: AppColors.blackColor,
                      size: 18.sp,
                    ),
                  ],
                )),
                  SizedBox(
              height: 10.h,
            ),
            Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("شهادة اتمام الكورس",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 10.w,
                    ),
                  Image.asset(
                  ImagesPath.icCertifiy,
                  width: 20.w,
                  height: 20.h,
                  fit: BoxFit.fill,
                ),
                  ],
                )),
                Row(
                  children: [
                    CustomButton(title:"متابعة",width: context.screenWidth/3,radius: 40,onPress:  () {Navigator.pushNamed(context, AppRoutes.videoDetailsList);},)

                  ],
                )
          ],
        ),
      ),
    );
  }
}
