import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final void Function()? onPress;
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final double? borderRadius;
  final double? width;
  final double? height;
  final double? fontSize;
  const PrimaryButtonWidget({
    super.key,
    this.onPress,
    this.buttonText,
    this.buttonColor,
    this.borderRadius,
    this.width,
    this.height,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.primaryColor,
        fixedSize: Size(width ?? 331.sp, height ?? 57.sp),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
      ),
      onPressed: onPress,
      child: Text(
        buttonText ?? "",
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: fontSize ?? 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
