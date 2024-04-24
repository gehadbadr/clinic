import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/appBar.widgets.dart';
import 'package:clinic/views/widgets/customButton.widgets.dart';
import 'package:clinic/views/widgets/videos/vidoes.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class VideoDetailsList extends StatelessWidget {
  const VideoDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBarWibget(currentIndex: 5, bgColor:AppColors.appBg,
)),
      body:  SingleChildScrollView(
        child: Column(
        
          children: [
             
            Stack(
              children: [
                Column(
                children: [
                    SizedBox(
                  height: 10.h,
                ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      
                      Text("  ${'specialcourse'.tr} فصائل الدم",
                          style: TextStyle(
                              fontFamily: "ArefRuqaa",
                              fontSize: Get.locale!.languageCode == "ar"? 20.sp:18.sp,
                              color: AppColors.blackColor)),
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
                       IconButton(
                          onPressed: () {},
                          icon:  Icon(
                            Icons.share_outlined,
                            color: AppColors.primaryColor,
                            size: 30.sp,
                          )),
                    ]),
                    SizedBox(
                      height: 5.h,
                    ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(
                  color: AppColors.secondryColor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: context.screenHeight-150.h,
                  child: ListView.builder(
                //    scrollDirection: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                                padding: const EdgeInsets.all(8),
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) => VideosWidget(
                      image: ImagesPath.video,
                      title: 'فيديوهات عن فصائل الدم ',
                      time: '1س و 36د',
                      view: '2.4k',
                      date: '6 شهور',
                      onPress: () {  Get.toNamed(AppRoutes.videoDetails);},
                    ),
                  ),
                ),
                      
                          ],
                        ),
                  Positioned(
                    bottom: 0,
                //    top: context.screenHeight-50,
                    child: 
                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                             CustomButton(title:" ${'subscribe'.tr} - 99.99 EGP ${'monthly'.tr}",width: context.screenWidth-40.w,height: 50.h,radius: 10,onPress:  () { Get.toNamed( AppRoutes.homepageScreen);},)
                    
                        ],  ), 
                  )      
              ],
            ),
          
            
          ],
        ),
      ),
    
      // CustomButton(title:"اشترك الآن- 99.99 EGP شهريا",width: context.screenWidth-50.w,height: 50.h,radius: 10,onPress:  () {Navigator.pushNamed(context, AppRoutes.videoDetailsList);},)

      // other properties...
    
//       bottomSheet:  
      
//       Container(
//         height: 100,
// padding: EdgeInsets.all(0),
//         child: 
//                         CustomButton(title:"متابعة",width: context.screenWidth-50.w,height: 50.h,radius: 10,onPress:  () {Navigator.pushNamed(context, AppRoutes.videoDetailsList);},)
                   
//       ),
    );
  }
}
