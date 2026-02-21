import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/primary_text_field.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/auth/widgets/button_back_widget.dart';
import 'package:finance_ui/features/auth/widgets/or_login_with_widget.dart';
import 'package:finance_ui/features/auth/widgets/social_media_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ButtonBackWidget(),
              HeightSpace(28),

              SizedBox(
                width: 280.w,
                child: Text(
                  "Welcome back! Again!",
                  style: AppStyles.primaryHeadLineSyle,
                ),
              ),
              HeightSpace(32),
              PrimaryTextField(hintText: "Enter your email"),
              HeightSpace(15),

              PrimaryTextField(
                hintText: "Enter your password",
                isPassword: true,
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.secondaryColor,
                  size: 20.sp,
                ),
              ),
              HeightSpace(15),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: AppStyles.black16SemiBold.copyWith(
                    color: Color(0xff6A707C),
                  ),
                ),
              ),
              HeightSpace(30),
              PrimaryButtonWidget(
                onPress: () {},
                buttonText: "Login",
                width: 331.w,
                height: 56.h,
              ),
              HeightSpace(24),
              OrLoginWithWidget(),
              HeightSpace(24),
              SocialMediaButtons(),
              HeightSpace(100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: AppStyles.blue15W500Style,
                  ),
                  Text(
                    "Register Now",
                    style: AppStyles.black16SemiBold.copyWith(
                      color: Color(0xff617AFD),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
