import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ButtonBackWidget extends StatelessWidget {
  const ButtonBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 41.w,
                  height: 41.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: Color(0xffE8ECF4)),
                  ),
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              );
  }
}