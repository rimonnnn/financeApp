import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopNotification extends StatelessWidget {
  const TopNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      AppAssets.profileImage,
                      width: 48.w,
                      height: 48.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  WidthSpace(11),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome back", style: AppStyles.grey12Medium),
                      Text("Rimon Abdelmasih", style: AppStyles.black15Bold),
                    ],
                  ),
                  WidthSpace(68),
                  Container(
                    width: 48.sp,
                    height: 48.sp,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xffE3E9ED)),
                    ),
                    child: Icon(
                      Icons.notifications,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              );
  }
}