import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/videos/vidoes.widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideosList extends StatelessWidget {
  const VideosList({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
        children: [
            SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
      
          Text("منصة عيادة خاصة بالكورسات الطبية",
              style: TextStyle(fontFamily: "ArefRuqaa", fontSize: 20.sp,color: AppColors.blackColor)),
        ]),
        SizedBox(
          height: 10.h,
        ),
        const Divider(
          color: AppColors.secondryColor,
        ),
        SizedBox(
          height: 5.h,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            10,
            (index) => VideosWidget(
              image: ImagesPath.video,
              title: 'فيديوهات عن فصائل الدم ',
              time: '30',
              view: '2.4k',
              date: '6 شهور',
              onPress: () {  Navigator.pushNamed(context, AppRoutes.videoDetails);},
              showPlayIcon: true,
            ),
          ),
        ),
                
                  ],
                ),
      ),
    );
  }
}
