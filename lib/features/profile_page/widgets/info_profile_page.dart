import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoProfilePage extends StatelessWidget {
  final String keyData;
  final String valueData;
  const InfoProfilePage({
    super.key,
    required this.keyData,
    required this.valueData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(keyData, style: AppStyles.grey12Medium),
        ),
        HeightSpace(6),
        Align(
          alignment: Alignment.topLeft,
          child: Text(valueData, style: AppStyles.black15Bold),
        ),
        HeightSpace(6),
        Divider(color: Color(0xffF2F2F5), thickness: 1.sp),
      ],
    );
  }
}
