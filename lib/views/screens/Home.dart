import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/screens/clinic/clinic_services.screens.dart';
import 'package:clinic/views/screens/clinic/text.dart';
import 'package:clinic/views/screens/products/products.screen.dart';
import 'package:clinic/views/screens/videos/videos.list.screens.dart';
import 'package:clinic/views/widgets/appBar.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  var navbarItem = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        //  size: 20,
        ),
        label: AppText.home),
    // BottomNavigationBarItem(
    //     icon: SvgPicture.asset(ImagesPath.suppliersIc),
    //     label: AppText.suppliers),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.list_alt,
        //  size: 20,
        ),
        label: AppText.suppliers),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPath.icHospital),
        label: AppText.hospitals),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.medical_services_sharp,
        //  size: 20,
        ),
        //icon: SvgPicture.asset(ImagesPath.pharmacyIc),
        label: AppText.pharmacy),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.add_home_outlined,
      //    size: 20,
        ),
        //icon: SvgPicture.asset(ImagesPath.visitingsIc),
        label: AppText.visitings),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPath.icEdu),
        label: AppText.educationalWed),
  ];

  List body = [const MyWidget(),const ClinicServices(),const MyWidget(),const MyWidget(),const MyWidget(),const VideosList()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
          preferredSize: const Size.fromHeight(60.0), child: AppBarWibget(currentIndex: _currentIndex)),
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
