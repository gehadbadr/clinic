import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/main.dart';
import 'package:clinic/views/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomAppBar extends StatelessWidget {
  final Color? bgColor;
  final IconData? leadingIcon;
  final IconData? actionIcon;
  final String? title;
  final Function()? onPressLeading;
  final Function()? onPressAction;
  const CustomAppBar(
      {super.key,
      this.bgColor,
      this.leadingIcon,
      this.actionIcon,
      this.title,
      this.onPressLeading,
      this.onPressAction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title != null
          ? Text(
              title!,
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
      backgroundColor: bgColor,
      // surfaceTintColor: bgColor,
      // bottomOpacity: 0.0,
      // elevation: 0.0,
      //  leadingWidth: 90,
      leading: IconButton(
        onPressed: () {
          // print("value");
          // Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => MyApp()),
          //         );
        //  Navigator.pushNamed(context, AppRoutes.homepageScreen);
        },
        //    onPressed: onPressLeading,
        // onPressed: () {
        //   print('jddfhjhdg');
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => Home()),
        //   );
        //   //    Navigator.pushNamed(context, AppRoutes.homepageScreen);
        // },
        icon: const Icon(
          Icons.arrow_back,
          color: AppColors.whiteColor,
        ),
      )
      // leading: IconButton(
      //     icon: Icon(
      //       Icons.close,
      //     ),
      //     onPressed: () {
      //       print("object");
      //       Navigator.pop(context); // <-- use this intead
      //     }),
    );
  }
}
