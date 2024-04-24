import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AppBarWibget extends StatelessWidget {
  final int? currentIndex;
  final Function()? onPressLeading;
  final Function()? onPressAction;
  final String? title;
  final Color bgColor;
  const AppBarWibget(
      {super.key, this.currentIndex, this.onPressLeading, this.onPressAction, this.title,required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: currentIndex != null && currentIndex == 5
          ? AppColors.appBg
          : bgColor ,
      centerTitle: true,
      title: currentIndex != null && currentIndex == 10
          ? Text(
              "products".tr,
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
          : const Text(""),
      surfaceTintColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      leadingWidth: 100.w,
      leading: Row(
        children: [
          currentIndex != null && currentIndex == 5
              ? Container(
                  padding: const EdgeInsets.only(left: 5.5, right: 5.5),
                  child: Row(
                    children: [
                      Text(
                        "عيادة".tr,
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                            fontFamily: "ArefRuqaa",
                            fontWeight: FontWeight.w600,
                            fontSize:  30.sp,
                            color: AppColors.primaryColor),
                      ),
                      SizedBox(
                          width: 40,
                          child: Image.asset(ImagesPath.icAppLogo,
                              width: 45.w, height: 45.h)),
                    ],
                  ),
                )
              : GestureDetector(
                  onTap: onPressLeading,
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: currentIndex! == 11?AppColors.whiteColor:AppColors.primaryColor ,
                    ),
                  ),
                ),
        ],
      ),
      actions: [
        currentIndex != null && currentIndex == 10 && currentIndex == 11
            ? const SizedBox()
            : currentIndex != null && currentIndex == 5
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          ' ${"search".tr}..',
                          style: const TextStyle(
                              fontFamily: "ArefRuqaa",
                              fontSize: 14,
                              color: AppColors.textfieldGrey),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.searchScreen);
                            },
                            child: Image.asset(
                              ImagesPath.icSearch,
                            )),
                      ],
                    ),
                  )
                : Container(
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
                            child: SvgPicture.asset(ImagesPath.icMessage,color: currentIndex == 11?AppColors.whiteColor:AppColors.primaryColor,)
                            // child: const Icon(
                            //   Icons.messenger_outline_outlined,
                            //   color: AppColors.primaryColor,
                            // )
                            ),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(ImagesPath.icNotifations,color: currentIndex == 11?AppColors.whiteColor:AppColors.primaryColor)
                            //  const Icon(Icons.notifications_none_rounded,
                            //     color: AppColors.primaryColor)
                            )
                      ],
                    ),
                  ),
      ],
    );
  }
}
