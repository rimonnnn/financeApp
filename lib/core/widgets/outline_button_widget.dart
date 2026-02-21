import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlineButtonWidget extends StatelessWidget {
  final void Function()? onPress;
  final String? buttonText;
  final Color? textColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? width;
  final double? height;
  final double? fontSize;
  const OutlineButtonWidget({
    super.key,
    this.onPress,
    this.buttonText,
    this.borderRadius,
    this.width,
    this.height,
    this.textColor,
    this.fontSize,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: borderColor ?? AppColors.primaryColor,
          width: 2.sp,
        ),
        fixedSize: Size(width ?? 331.sp, height ?? 57.sp),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
      ),
      onPressed: onPress,
      child: Text(
        buttonText ?? "",
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontSize: fontSize ?? 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
