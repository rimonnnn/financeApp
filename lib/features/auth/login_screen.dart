import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/styling/app_validator.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/primary_text_field.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/auth/forget_password_screen.dart';
import 'package:finance_ui/core/widgets/button_back_widget.dart';
import 'package:finance_ui/features/auth/widgets/or_login_with_widget.dart';
import 'package:finance_ui/features/auth/widgets/social_media_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  // void initState() {
  //   super.initState();
  //   emailController = TextEditingController();
  //   passwordController = TextEditingController();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ButtonBackWidget(),
                  HeightSpace(28),

                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 280.w,
                      child: Text(
                        "Welcome back! Again!",
                        style: AppStyles.primaryHeadLineSyle,
                      ),
                    ),
                  ),
                  HeightSpace(32),
                  PrimaryTextField(
                    hintText: "Enter your email",
                    controller: emailController,
                    validator: AppValidator.email,
                  ),
                  HeightSpace(15),

                  PrimaryTextField(
                    hintText: "Enter your password",
                    isPassword: _isPasswordVisible,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    controller: passwordController,
                    validator: AppValidator.password,
                  ),
                  HeightSpace(15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.forgetPasswordScreen);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: AppStyles.black16SemiBold.copyWith(
                          color: Color(0xff6A707C),
                        ),
                      ),
                    ),
                  ),
                  HeightSpace(30),
                  PrimaryButtonWidget(
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.otpVerificationScreen);
                        // Perform login action
                      }
                    },
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
                      InkWell(
                        onTap: () {
                          GoRouter.of(
                            context,
                          ).pushNamed(AppRoutes.registerScreen);
                        },
                        child: Text(
                          " Register Now",
                          style: AppStyles.black16SemiBold.copyWith(
                            color: Color(0xff202955),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
