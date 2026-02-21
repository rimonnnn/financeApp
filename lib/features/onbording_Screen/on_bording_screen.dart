import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/outline_button_widget.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBoarding1,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fill,
          ),
          HeightSpace(21),
          PrimaryButtonWidget(
            width: 331.w,
            height: 56.h,
            buttonText: "Login",
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
          ),
          HeightSpace(21),
          OutlineButtonWidget(
            onPress: () {},
            width: 331.w,
            height: 56.h,
            buttonText: "Register",
          ),
          HeightSpace(35),
          Text(
            "Continue as a guest",
            style: AppStyles.black15Bold.copyWith(
              color: Color(0xff202955),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
