import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/custom_textfield.widgets.dart';
import 'package:flutter/material.dart';

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
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
                Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          
                            icon: const Icon(
                              Icons.arrow_back,
                              color: AppColors.whiteColor,
                            ),
                          ),
                ),
              ),

              // Expanded(
              //   flex: 5,
              //   child: Padding(
              //     padding: const EdgeInsets.only(top:7.0,right: 10),
              //     child: CustomTextField(
              //               title: AppText.search,
              //               hint: AppText.searchHint,
              //               controller: authController.emailController,
              //               icon: Icons.email,
              //               isPass: false,
              //               onClick: (value) {
              //                 //  authController.emailController!.text =
              //                 value!;
              //               },
              //             ),
              //   ),
              // ),
            
            ],
          ),
        ),
      ),leading: const SizedBox(),
//backgroundColor:  AppColors.appBg,
        // centerTitle: true,
        // title: title != null
        //     ? CustomTextField(
        //         title: AppText.search,
        //         hint: AppText.searchHint,
        //         //  controller: authController.emailController,
        //         icon: Icons.email,
        //         isPass: false,
        //         onClick: (value) {
        //           //  authController.emailController!.text =
        //           value!;
        //         },
        //       )
        //     : Text(""),
        backgroundColor: AppColors.appBg,
        // surfaceTintColor: bgColor,
        // bottomOpacity: 0.0,
        // elevation: 0.0,
        //  leadingWidth: 90,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //     // print("value");
        //     // Navigator.push(
        //     //           context,
        //     //           MaterialPageRoute(builder: (context) => MyApp()),
        //     //         );
        //     //  Navigator.pushNamed(context, AppRoutes.homepageScreen);
        //   },
        //   //    onPressed: onPressLeading,
        //   // onPressed: () {
        //   //   print('jddfhjhdg');
        //   //   Navigator.push(
        //   //     context,
        //   //     MaterialPageRoute(builder: (context) => Home()),
        //   //   );
        //   //   //    Navigator.pushNamed(context, AppRoutes.homepageScreen);
        //   // },
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: AppColors.whiteColor,
        //   ),
        // )
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
