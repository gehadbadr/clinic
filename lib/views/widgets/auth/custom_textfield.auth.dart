import 'package:flutter/material.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:get/get.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String title;
  final TextEditingController? controller;
  final Function(String?)? onClick;
  final IconData icon;
  final bool? isPass;
  bool? passwordIcon;
  Function(void)? togglePassword;
  Function(String?)? switchPasswordIcon;
  final bool isNumber;

  CustomTextField({
    super.key,
    required this.title,
    required this.hint,
    required this.icon,
    this.isPass,
    this.controller,
    this.onClick,
    this.passwordIcon,
    required this.isNumber,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var keyboardType ;


  String? errorMessage(String str) {
    if (widget.hint == "nameHint".tr) {
      return "nameRequired".tr;
    } else if (widget.hint == "emailHint".tr) {
      return "emailRequired".tr;
    } else if (widget.hint == "phoneHint".tr) {
      return "phoneRequired".tr;
    } else if (widget.hint == "passwordHint".tr) {
      return "passwordRequired".tr;
    } else if (widget.hint == "repasswordHint".tr) {
      return "repasswordRequired".tr;
    } else if (widget.hint == "oldPasswordHint".tr) {
      return "oldPasswordRequired".tr;
    } else if (widget.hint == "newPasswordHint".tr) {
      return "newPasswordRequired".tr;
    }
    // switch (widget.hint) {
    //   case TextApp.nameHint:
    //     return S.of(context).nameRequired;
    //   case S.of(context).emailHint:
    //     return S.of(context).emailRequired;
    //   case TextApp.passwordHint:
    //     return S.of(context).passwordRequired;
    //   case TextApp.repasswordHint:
    //     return S.of(context).repasswordRequired;
    //   case TextApp.oldPasswordHint:
    //     return S.of(context).oldPasswordRequired;
    //   case TextApp.newPasswordHint:
    //     return S.of(context).newPasswordRequired;
    // }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 10,
      ),
      TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return errorMessage(widget.hint);
          }
          if (widget.title == "email".tr) {
            if (!GetUtils.isEmail(value)) {
              return "invalidEmail".tr;
            }
          }
          if (widget.title == "email".tr) {
            if (!GetUtils.isEmail(value)) {
              return "invalidEmail".tr;
            }
          }
          if (widget.title == "password".tr) {
            if (value.length < 6) {
              return "weakPassword".tr;
            }
          }
          if (widget.title == "name".tr ) {
            if (!GetUtils.isUsername(value)|| value.length > 20) {
              return "invalidName".tr;
            }
          }
          return null;
        },

        onSaved: widget.onClick,
        cursorColor: AppColors.primaryColor,
        style: const TextStyle(color: AppColors.primaryColor),
        obscureText: widget.isPass == false ? false : widget.passwordIcon!,
        controller: widget.controller,
        keyboardType: widget.isNumber 
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text  ,
        decoration: InputDecoration(
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            hintText: widget.hint,
            isDense: true,
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )),
            //fillColor: lightGrey,
            prefixIcon: Icon(
              widget.icon,
              color: AppColors.primaryColor,
            ),
            suffixIcon: widget.isPass == true
                ? InkWell(
                    onTap: () {
                      widget.passwordIcon = !widget.passwordIcon!;
                      setState(() {});
                    },
                    child: widget.passwordIcon!
                        ? const Icon(
                            Icons.visibility_off,
                            color: AppColors.primaryColor,
                          )
                        : const Icon(Icons.visibility))
                : null,
            //border: InputBorder.none,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
//    focusedBorder:  OutlineInputBorder(
// borderRadius: BorderRadius.circular(30),
//                 borderSide: BorderSide(color: AppColors.primaryColor))),
//
      ),
      const SizedBox(
        height: 20,
      ),
    ]);
  }
}
