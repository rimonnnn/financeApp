import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItems extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subTitle;
  const CustomItems({
    super.key,
    required this.iconData,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155.w,
      height: 150.h,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE3E9ED), width: 1.sp),
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                color: Color(0xffE2E0E4),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Icon(iconData, color: AppColors.primaryColor),
            ),
            HeightSpace(12),
            Text(title, style: AppStyles.black15Bold),
            HeightSpace(8),
            Text(subTitle, style: AppStyles.grey15W500),
          ],
        ),
      ),
    );
  }
}
