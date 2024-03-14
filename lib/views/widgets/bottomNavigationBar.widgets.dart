import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  BottomNavigationBarWidget({super.key});
  var navbarItem = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 20,
        ),
        label: AppText.home),
    // BottomNavigationBarItem(
    //     icon: SvgPicture.asset(ImagesPath.suppliersIc),
    //     label: AppText.suppliers),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.list_alt,
          size: 20,
        ),
        label: AppText.suppliers),  
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPath.hospitalIc),
        label: AppText.hospitals),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.medical_services_sharp,
          size: 20,
        ),
        //icon: SvgPicture.asset(ImagesPath.pharmacyIc), 
        label: AppText.pharmacy),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.add_home_outlined,
          size: 20,
        ),
        //icon: SvgPicture.asset(ImagesPath.visitingsIc),
         label: AppText.visitings),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPath.eduIc),
        label: AppText.educationalWed),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: navbarItem,
      backgroundColor: AppColors.whiteColor,
      selectedItemColor: AppColors.primaryColor,
      //  selectedLabelStyle:  TextStyle(fontFamily: FontWeight.w400),
      //unselectedLabelStyle:  TextStyle(fontSize: 10),
      unselectedFontSize: 10,
      selectedLabelStyle: const TextStyle(overflow: TextOverflow.visible),
      onTap: (value) {},
    );
  }
}
