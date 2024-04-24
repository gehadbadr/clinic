import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/screens/clinic/clinic_services.screens.dart';
import 'package:clinic/views/screens/clinic/text.dart';
import 'package:clinic/views/screens/videos/videos.list.screens.dart';
import 'package:clinic/views/widgets/appBar.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  var navbarItem = [
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.home,
          //  size: 20,
        ),
        label: "home".tr),
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.dashboard_outlined,
          //  size: 20,
        ),
        label: "suppliers".tr),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(ImagesPath.icHospital),
      label: "hospitals".tr,
      activeIcon: SvgPicture.asset(ImagesPath.icHospital,
          color: AppColors.primaryColor),
    ),
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.medication_liquid,
          //  size: 20,
        ),
        //icon: SvgPicture.asset(ImagesPath.pharmacyIc),
        label: "pharmacy".tr),
    BottomNavigationBarItem(
        icon: const Icon(
          Icons.home_work_outlined,
          //    size: 20,
        ),
        //icon: SvgPicture.asset(ImagesPath.visitingsIc),
        label: "visitings".tr),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(ImagesPath.icEdu),
      label: "educationalWed".tr,
      activeIcon:
          SvgPicture.asset(ImagesPath.icEdu, color: AppColors.primaryColor),
    ),
  ];

  List body = [
    const MyWidget(),
    const ClinicServices(),
    const MyWidget(),
    const MyWidget(),
    const MyWidget(),
    const VideosList()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBarWibget(
            currentIndex: _currentIndex,
            bgColor: AppColors.bgColor,
          )),
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: navbarItem,
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.navIcon,
        //  selectedLabelStyle:  TextStyle(fontFamily: FontWeight.w400),
        //unselectedLabelStyle:  TextStyle(fontSize: 10),
        unselectedFontSize: 9,
        selectedFontSize: 9,
        selectedLabelStyle: const TextStyle(overflow: TextOverflow.visible),
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
