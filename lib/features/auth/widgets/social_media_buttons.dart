import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/auth/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomIcon(onTap: () {}, path: AppAssets.facebookLogo),
          WidthSpace(8),
          CustomIcon(onTap: () {}, path: AppAssets.googleLogo),
          WidthSpace(8),
          CustomIcon(onTap: () {}, path: AppAssets.appleLogo),
        ],
      ),
    );
  }
}
