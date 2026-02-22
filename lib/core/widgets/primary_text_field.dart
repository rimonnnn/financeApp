import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextField extends StatelessWidget {
  final String? hintText;
  final bool? isPassword;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const PrimaryTextField({
    super.key,
    this.hintText,
    this.isPassword,
    this.suffixIcon,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 331.w,
      child: TextFormField(
        
        controller: controller,
        validator: validator,
        cursorColor: AppColors.primaryColor,
        obscureText: isPassword ?? false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF7F8F9),
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          hintText: hintText ?? "",
          hintStyle: TextStyle(
            fontFamily: AppFonts.appFonts,
            color: Color(0xff8391A1),
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Color(0xffE8ECF4), width: 1.sp),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 1.sp),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
