import 'package:clinic/views/widgets/customAppBar.widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: PreferredSize(
          preferredSize:  Size.fromHeight(60.h),
          child: CustomAppBar(title: "1")),
    
      body: Container(),
    );
  }
}