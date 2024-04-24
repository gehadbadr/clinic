import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomTextFieldFile extends StatefulWidget {
  final String hint;
  final String title;
  final TextEditingController controller;
  final Function(String?)? onClick;
  bool isNum;

  CustomTextFieldFile({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    this.onClick,
    required this.isNum,
  });

  @override
  State<CustomTextFieldFile> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextFieldFile> {
  String? errorMessage(String str) {
    if (widget.title == "nationalId".tr) {
      return "requiredNationalId".tr;
    } else if (widget.title == "fullname".tr) {
      return "nameRequired".tr;    
    } else if (widget.title == "age".tr) {
      return "ageRequired".tr; 
    } else if (widget.title == "height".tr) {
      return "heightRequired".tr; 
    } else if (widget.title == "weight".tr) {
      return "weightRequired".tr; 
    }
 
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 5,
      ),
      Text(
        widget.title,
        style:  TextStyle(
            color: AppColors.primaryColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600),
      ),
       SizedBox(
        height:5.h,
      ),
      TextFormField(
        
          validator: (value) {
            if (value!.isEmpty) {
              return errorMessage(widget.title);
            }
            if (widget.title !=  "password".tr && widget.title !=  "repassword".tr && value.length > 25 ) {
              return "invalidName".tr;
            } 
            
            if (widget.title ==  "nationalId".tr && value.length != 14 ) {
              return "invalidNationalId".tr;
            }            
            return null;
          },
          keyboardType: widget.isNum ? const TextInputType.numberWithOptions() :TextInputType.text,
          onSaved: widget.onClick,
          cursorColor: AppColors.primaryColor,
          style:  TextStyle(color: AppColors.primaryColor,fontSize: 18.sp),
          controller: widget.controller,
          decoration: InputDecoration(
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w600,fontSize:14, color: AppColors.hintColor),
              hintText: widget.hint,
              isDense: true,
              contentPadding:const EdgeInsets.all(20),
              fillColor: AppColors.bgColor,
             
             
               filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 2.0,
                ),
              ),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 2.0,
                ),
              )
              )
              ),
       SizedBox(
        height: 5.h,
      ),
    ]);
  }
}
