import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/auth/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            HeightSpace(248),
            Stack(
              children: [
                SvgPicture.asset(
                  AppAssets.curlyCircle,
                  width: 100.w,
                  height: 100.h,
                ),
                Positioned(
                  top: 33.46.sp,
                  left: 26.31.sp,
                  child: SvgPicture.asset(
                    AppAssets.trueSign,
                    width: 46.97691345214844.w,
                    height: 36.45199966430664.h,
                  ),
                ),
              ],
            ),
            HeightSpace(35),
            Center(
              child: Text(
                "Password Changed!",
                style: AppStyles.primaryHeadLineSyle.copyWith(fontSize: 26.sp),
              ),
            ),
            HeightSpace(8),
            Center(
              child: SizedBox(
                width: 280.w,
                child: Text(
                  textAlign: TextAlign.center,
                  "Your password has been changed successfully.",
                  style: AppStyles.grey15W500,
                ),
              ),
            ),
            HeightSpace(40),
            PrimaryButtonWidget(
              onPress: () {
                GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
              },
              buttonText: "Back to Login",
            ),
          ],
        ),
      ),
    );
  }
}
