import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BloodTypeDropdown extends StatefulWidget {
  @override
  _BloodTypeDropdownState createState() => _BloodTypeDropdownState();
}

class _BloodTypeDropdownState extends State<BloodTypeDropdown> {
  late String _selectedBloodType;
  List<String> bloodTypes = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];

  @override
  void initState() {
    super.initState();
    _selectedBloodType = bloodTypes.first;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 150),
      child: Container(
        // width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.primaryColor, width: 2.w),
        ),
        child: DropdownButton(
          underline: const SizedBox(),
          style: const TextStyle(color: AppColors.primaryColor),
          icon: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.keyboard_arrow_down_sharp,
              size: 20,
              color: AppColors.primaryColor,
            ),
          ),
          //elevation: 8,
          isExpanded: true,
          borderRadius: BorderRadius.circular(15),
          iconSize: 30,
          // dropdownColor: AppColors.primary,

          value: _selectedBloodType,
          onChanged: (newValue) {
            setState(() {
              _selectedBloodType = newValue!;
            });
          },
          items: bloodTypes.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  value,
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
