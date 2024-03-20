import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class VideosWidget extends StatelessWidget {
  final String image;
  final String title;
  final String view;
  final String date;
  final String time;
  final Function()? onPress;
  const VideosWidget({
    super.key,
    required this.image,
    required this.title,
    required this.view,
    required this.date,
    required this.time,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.8),
      margin:  EdgeInsets.symmetric(vertical: 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: (context.screenWidth - 20) / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        ImagesPath.icShare,
                        width: 20.w,
                        height: 30.h,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        width: 120.w,
                        //  height: 80.h,
                        // color: Colors.amber,
                        constraints: BoxConstraints(minHeight: 70.h),
                        child: Text(
                          title,
                          maxLines: 2,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20.sp,
                              color: AppColors.blackColor),
                        ),
                      )

                      //         InkWell(onTap: () {},
                      // child: const Icon(
                      //   Icons.podcasts_outlined,
                      //   color: AppColors.primaryColor,
                      //   size: 15,
                      // )
                      // ),
                    ]),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.only(right: 5.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'من ${date} ',
                        style: TextStyle(
                            //fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: AppColors.blackColor),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        '${view} تفاعل',
                        style: TextStyle(
                            //  fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: AppColors.blackColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  image,
                  width: (context.screenWidth - 80) / 2,
                  height: 110.h,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, right: 10),
                padding: EdgeInsets.only(bottom: 4, top: 4, left: 4, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: AppColors.primaryColor),
                child: Row(
                  children: [
                    Image.asset(
                      ImagesPath.icPlay,
                      // width: 20.w,
                      // height: 20.h,
                      fit: BoxFit.fill,
                    ),
                    // Icon(Icons.play_circle_outlined,color: AppColors.whiteColor,size: 16.sp),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      time,
                      style: TextStyle(
                          color: AppColors.whiteColor, fontSize: 14.sp),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
