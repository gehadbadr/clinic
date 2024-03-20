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
          height: 25.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
      
          Text("منصة عيادة خاصة بالكورسات الطبية",
              style: TextStyle(fontFamily: "ArefRuqaa", fontSize: 20.sp)),
        ]),
        SizedBox(
          height: 25.h,
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
              onPress: () {},
            ),
          ),
        ),
                
                //           Container(
                //             padding: EdgeInsets.all(8.8),
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.end,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Container(
                //                   width: (context.screenWidth - 20) / 2,
                //                   child: Column(
                //                     mainAxisAlignment: MainAxisAlignment.end,
                //                     crossAxisAlignment: CrossAxisAlignment.center,
                //                     children: [
                //                       Row(
                //                           mainAxisAlignment: MainAxisAlignment.end,
                //                           crossAxisAlignment: CrossAxisAlignment.start,
                //                           children: [
                //                             Image.asset(
                //                               ImagesPath.icShare,
                //                               width: 20.w,
                //                               height: 30.h,
                //                               fit: BoxFit.fill,
                //                             ),
                //                             SizedBox(
                //                               width: 5.w,
                //                             ),
                //                             Container(
                //                               width: 120.w,
                //                             //  height: 80.h,
                //                             // color: Colors.amber,
                //                               constraints:  BoxConstraints(minHeight: 70.h),
                //                               child: Text(
                //                                 'فيديوهات عن فصائل الدم ',
                //                                 maxLines:2,
                //                                 textDirection: TextDirection.rtl,
                //                                 textAlign: TextAlign.right,
                //                                 overflow: TextOverflow.ellipsis,
                //                                 style: TextStyle(
                //                                     fontWeight: FontWeight.w600,
                //                                     fontSize: 20.sp,
                //                                     color: AppColors.blackColor),
                //                               ),
                //                             )
                
                //                             //         InkWell(onTap: () {},
                //                             // child: const Icon(
                //                             //   Icons.podcasts_outlined,
                //                             //   color: AppColors.primaryColor,
                //                             //   size: 15,
                //                             // )
                //                             // ),
                //                           ]),
                //                       SizedBox(
                //                         height: 10.h,
                //                       ),
                //                       Container(
                //                         padding: EdgeInsets.only(right: 5.5),
                //                         child: Row(
                //                           mainAxisAlignment: MainAxisAlignment.end,
                //                           children: [
                //                             Text(
                //                               'من 6 شهور',
                //                               style: TextStyle(
                //                                   //fontWeight: FontWeight.w400,
                //                                   fontSize: 14.sp,
                //                                   color: AppColors.blackColor),
                //                             ),
                //                             SizedBox(
                //                               width: 10.w,
                //                             ),
                //                             Text(
                //                               '2.4kتفاعل',
                //                               style: TextStyle(
                //                                 //  fontWeight: FontWeight.w400,
                //                                   fontSize: 14.sp,
                //                                   color: AppColors.blackColor),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //                 SizedBox(
                //                   width: 10.w,
                //                 ),
                //                 Stack(
                //                 alignment:AlignmentDirectional.bottomEnd,
                //                   children: [
                //                     ClipRRect(
                //                       borderRadius: BorderRadius.circular(8.0),
                //                       child: Image.asset(
                //                         ImagesPath.video,
                //                         width: (context.screenWidth - 60) / 2,
                //                         height: 110.h,
                //                         fit: BoxFit.fill,
                //                       ),
                //                     ),
                //                     Container(
                //                       margin: EdgeInsets.only(bottom: 10,right: 10),
                //                       padding: EdgeInsets.only(bottom: 4,top: 4,left: 4,right: 10),
                //                       decoration: BoxDecoration(
                //                         borderRadius: BorderRadius.circular(8.0),
                //                         color: AppColors.primaryColor
                //                       ),
                //                       child: Row(
                //                         children: [
                //                           Image.asset(
                //                             ImagesPath.icPlay,
                //                             // width: 20.w,
                //                             // height: 20.h,
                //                             fit: BoxFit.fill,
                //                           ),
                //                           // Icon(Icons.play_circle_outlined,color: AppColors.whiteColor,size: 16.sp),
                //                             SizedBox(
                //                             width: 5.w,
                //                           ),
                //                           Text('45',style: TextStyle(color: AppColors.whiteColor,fontSize: 14.sp),),
                
                // ],
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //               ],
                //             ),
                //           )
                  ],
                ),
      ),
    );
  }
}
