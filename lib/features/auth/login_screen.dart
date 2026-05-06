import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/styling/app_validator.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/primary_text_field.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/auth/auth_provider/auth_provider.dart';
import 'package:finance_ui/core/widgets/button_back_widget.dart';
import 'package:finance_ui/features/auth/widgets/or_login_with_widget.dart';
import 'package:finance_ui/features/auth/widgets/social_media_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = true;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _login() async {
    FocusScope.of(context).unfocus();

    if (!formKey.currentState!.validate()) {
      return;
    }

    await context.read<AuthProvider>().logIn(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

    if (!context.mounted) return;

    final bool isLogin = context.read<AuthProvider>().isLogin;

    if (isLogin) {
      GoRouter.of(context).pushReplacementNamed(AppRoutes.mainScreen);
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(22.w),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const ButtonBackWidget(),

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
                    controller: passwordController,
                    validator: AppValidator.password,
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
                  ),

                  HeightSpace(15),

                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(context).pushNamed(
                          AppRoutes.forgetPasswordScreen,
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: AppStyles.black16SemiBold.copyWith(
                          color: const Color(0xff6A707C),
                        ),
                      ),
                    ),
                  ),

                  HeightSpace(30),

                  Consumer<AuthProvider>(
                    builder: (context, authProvider, child) {
                      return PrimaryButtonWidget(
                        onPress: authProvider.isLoading ? null : _login,
                        buttonText:
                            authProvider.isLoading ? "Loading..." : "Login",
                        width: 331.w,
                        height: 56.h,
                      );
                    },
                  ),

                  HeightSpace(24),

                  const OrLoginWithWidget(),

                  HeightSpace(24),

                  const SocialMediaButtons(),

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
                          GoRouter.of(context).pushNamed(
                            AppRoutes.registerScreen,
                          );
                        },
                        child: Text(
                          " Register Now",
                          style: AppStyles.black16SemiBold.copyWith(
                            color: const Color(0xff202955),
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