import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/main_screen/widgets/back_buttom_black_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProfilePage extends StatelessWidget {
  const TopProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackButtomBlackWidget(),
        WidthSpace(75),
        Text(
          "My Profile",
          style: AppStyles.black15Bold.copyWith(fontSize: 18.sp),
        ),
        WidthSpace(70),
        Container(
          width: 48.w,
          height: 48.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xffF2F2F5), width: 1.w),
          ),
          child: Icon(Icons.person_outline),
        ),
      ],
    );
  }
}
