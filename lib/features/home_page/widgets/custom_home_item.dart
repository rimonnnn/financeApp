import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String descrebtion;
  const CustomHomeItem({
    super.key,
    required this.iconData,
    required this.title,
    required this.descrebtion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE3E9ED), width: 1.w),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: Color(0xffECF1F6),
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              child: Icon(iconData as IconData?, color: AppColors.primaryColor),
            ),
          ),
          HeightSpace(6),
          Text(title, style: AppStyles.black15Bold),
          HeightSpace(3),
          Text(descrebtion, style: AppStyles.grey12Medium),
        ],
      ),
    );
  }
}
