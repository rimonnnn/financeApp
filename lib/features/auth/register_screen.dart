import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/styling/app_validator.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/primary_text_field.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/core/widgets/button_back_widget.dart';
import 'package:finance_ui/features/auth/widgets/or_register_whith.dart';
import 'package:finance_ui/features/auth/widgets/social_media_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  bool _isPasswordVisible = true;
  bool _isConfirmPasswordVisible = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
                        "Hello! Register to get started",
                        style: AppStyles.primaryHeadLineSyle,
                      ),
                    ),
                  ),
                  HeightSpace(32),
                  PrimaryTextField(
                    hintText: "User name",
                    controller: userNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your user name";
                      }
                      return null;
                    },
                  ),
                  HeightSpace(12),
                  PrimaryTextField(
                    hintText: "Email",
                    controller: emailController,
                    validator: AppValidator.email,
                  ),
                  HeightSpace(12),

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
                  HeightSpace(12),
                  PrimaryTextField(
                    hintText: "Confirm password",
                    isPassword: _isConfirmPasswordVisible,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isConfirmPasswordVisible =
                              !_isConfirmPasswordVisible;
                        });
                      },
                      icon: Icon(
                        _isConfirmPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      } else if (value.length < 8) {
                        return "Please enter at least 8 characters";
                      } else if (value != passwordController.text) {
                        return "Password does not match";
                      }
                      return null;
                    },
                  ),
                  HeightSpace(30),
                  PrimaryButtonWidget(
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        // Perform login action
                        GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                      }
                    },
                    buttonText: "Register",
                    width: 331.w,
                    height: 56.h,
                  ),
                  HeightSpace(35),
                  OrRegisterWhith(),
                  HeightSpace(22),
                  SocialMediaButtons(),
                  HeightSpace(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: AppStyles.blue15W500Style,
                      ),
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                        },
                        child: Text(
                          " Login Now",
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
