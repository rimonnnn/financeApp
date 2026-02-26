import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomVisaCard extends StatelessWidget {
  final Color boxColor;
  final String? cardType;
  final String? date;
  final String? code;
  final String? egNum;
  const CustomVisaCard({
    required this.boxColor,
    super.key,
    required this.cardType,
    required this.date,
    required this.code,
    required this.egNum,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 327.w,
          height: 179.h,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
          ),
        ),
        Positioned(
          bottom: 0.sp,
          left: 0.sp,
          child: Image.asset(
            AppAssets.layer1Image,
            width: 200.w,
            height: 120.h,
            color: Color(0xffFEFEFE),
          ),
        ),
        Positioned(
          bottom: 0.sp,
          left: 0.sp,
          child: Image.asset(
            AppAssets.layer2Image,
            width: 150.w,
            height: 50.h,
            color: Color(0xffFEFEFE),
          ),
        ),
        Positioned(
          top: 24.sp,
          left: 24.sp,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cardType ?? "UnKnown", style: AppStyles.white15W500),
              HeightSpace(12),
              Text(
                "Balance",
                style: AppStyles.grey15W500.copyWith(
                  color: Colors.grey.shade300,
                ),
              ),
              HeightSpace(8),
              Text(
                egNum ?? "",
                style: AppStyles.white15W500.copyWith(fontSize: 24.sp),
              ),
              HeightSpace(15),
              Text(
                code ?? "",
                style: AppStyles.grey15W500.copyWith(
                  color: Colors.grey.shade300,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 26.sp,
          right: 45.sp,
          child: Container(
            child: Text(
              date ?? "UnKnown",
              style: AppStyles.white15W500.copyWith(fontSize: 12.sp),
            ),
          ),
        ),
      ],
    );
  }
}
