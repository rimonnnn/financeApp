import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrRegisterWhith extends StatelessWidget {
  const OrRegisterWhith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 90.w,
          child: Divider(color: Color(0xffE8ECF4)),
        ),
        WidthSpace(12),
        Text(
          "Or Register with",
          style: AppStyles.grey15W500.copyWith(fontWeight: FontWeight.w600),
        ),
        WidthSpace(12),
        SizedBox(
          width: 90.w,
          child: Divider(color: Color(0xffE8ECF4)),
        ),
      ],
    );
  }
}
