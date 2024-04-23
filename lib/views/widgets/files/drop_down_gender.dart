import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class GenderDropdown extends StatefulWidget {
  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  late String _selectedGenderType;
  List<String> genderTypes = [
    'male'.tr,
    'female'.tr,
  ];

  @override
  void initState() {
    super.initState();
    _selectedGenderType = genderTypes.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Container(
         width:  MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColors.primaryColor, width: 2.w),
          ),
          child: DropdownButton(
            underline: const SizedBox(),
            borderRadius: BorderRadius.circular(22),
            style: const TextStyle(color: AppColors.primaryColor),
            icon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 20,
                color: AppColors.primaryColor,
              ),
            ),
            isExpanded: true,
            // borderRadius: BorderRadius.circular(15),
            iconSize: 30,
            //dropdownColor: AppColors.primary,
          
            value: _selectedGenderType,
            onChanged: (newValue) {
              setState(() {
                _selectedGenderType = newValue!;
              });
            },
            items: genderTypes.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(value,style: TextStyle(fontSize: 20.sp),),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}