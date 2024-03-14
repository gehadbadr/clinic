import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';

class AppBarWibget extends StatelessWidget {
  const AppBarWibget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
         surfaceTintColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      leadingWidth: 200,
      leading: Row(
        children: [
          IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.messenger_outline_outlined,
            color: AppColors.primaryColor,
          )),
      IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none_rounded,
              color: AppColors.primaryColor))
      
 
        ],
      ),
    
      );
  }
}