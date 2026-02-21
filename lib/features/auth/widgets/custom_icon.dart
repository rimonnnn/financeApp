import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  final String path;
  final Function() onTap;
  const CustomIcon({super.key, required this.path, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.w,
      height: 56.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Color(0xffE8ECF4), width: 1.w),
      ),
      child: Center(
        child: InkWell(
          onTap: () {
            onTap;
          },
          child: SvgPicture.asset(
            path,
            width: 12.w,
            height: 24.h,
          ),
        ),
      ),
    );
  }
}
