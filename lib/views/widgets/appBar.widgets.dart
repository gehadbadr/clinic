import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWibget extends StatelessWidget {
  final int? currentIndex;
  final Function()? onPressLeading;
  final Function()? onPressAction;
  const AppBarWibget({super.key, this.currentIndex,this.onPressLeading,this.onPressAction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: currentIndex != null && currentIndex == 5
          ? AppColors.appBg
          : AppColors.whiteColor,
      centerTitle: true,
      title: currentIndex != null && currentIndex == 10
          ? Text(
              AppText.products,
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 25.sp,
                shadows: const [
                  Shadow(
                    blurRadius: 2.0,
                    color: AppColors.borderLine,
                    offset: Offset(0.0, 2.0),
                  ),
                ],
              ),
            )
          : Text(""),
      surfaceTintColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      leadingWidth: 90,
      leading: currentIndex != null && currentIndex == 10
          ? IconButton(
              onPressed:onPressLeading ,
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.primaryColor,
              ))
          : currentIndex != null && currentIndex == 5
              ? Container(
                  //  width: 100.w,
                  //  color: Colors.amber,
                  padding: const EdgeInsets.only(left: 5.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: SvgPicture.asset(ImagesPath.icSearch),iconSize: 5,
                      //   //  const Icon(Icons.notifications_none_rounded,
                      //   //     color: AppColors.primaryColor)
                      //   ),
                      InkWell(
                          onTap: () {},
                          child: Image.asset(
                            ImagesPath.icSearch,
                          )),
                      //   // child: const Icon(
                      //   //   Icons.messenger_outline_outlined,
                      //   //   color: AppColors.primaryColor,
                      //   // )
                      //   ),
                      const Text(
                        ' .. ${AppText.search}',
                        style: TextStyle(
                            fontFamily: "ArefRuqaa",
                            fontSize: 14,
                            color: AppColors.textfieldGrey),
                      ),
                    ],
                  ),
                )
              : Container(
                  //  width: 100,
                  padding: const EdgeInsets.only(left: 5.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Container(
                      //       width: 50,
                      //       color: Colors.black,
                      //     ),
                      InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(ImagesPath.icMessage)
                          // child: const Icon(
                          //   Icons.messenger_outline_outlined,
                          //   color: AppColors.primaryColor,
                          // )
                          ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(ImagesPath.icNotifations)
                          //  const Icon(Icons.notifications_none_rounded,
                          //     color: AppColors.primaryColor)
                          )
                    ],
                  ),
                ),
      actions: [
        currentIndex != null && currentIndex == 5?
        Container(
          padding: EdgeInsets.only(right: 5.5),
          child: Row(
            children: [
              Container(
                //width: 50,
                child: const Text(
                  AppText.clinic,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "ArefRuqaa",
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: AppColors.primaryColor),
                ),
              ),
              SizedBox(
                  width: 40,
                  child: Image.asset(ImagesPath.icAppLogo,
                      width: 45.w, height: 45.h)),
            ],
          ),
        )
      :const SizedBox(),],
    );
  }
}
