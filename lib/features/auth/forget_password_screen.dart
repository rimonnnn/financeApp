import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/styling/app_validator.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/primary_text_field.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/auth/widgets/button_back_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
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
                        "Forgot Password?",
                        style: AppStyles.primaryHeadLineSyle,
                      ),
                    ),
                  ),
                  HeightSpace(10),
                  Text(
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
                    style: AppStyles.grey15W500,
                  ),
                  HeightSpace(32),
                  PrimaryTextField(
                    hintText: "Enter your email",
                    validator: AppValidator.email,
                    controller: emailController,
                  ),
                  HeightSpace(38),
                  PrimaryButtonWidget(
                    onPress: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    buttonText: "Send Code",
                  ),
                  HeightSpace(320),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Remember Password?",
                        style: AppStyles.blue15W500Style,
                      ),
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).pushNamed(AppRoutes.createPasswordScreen);
                        },
                        child: Text(
                          " Login",
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
