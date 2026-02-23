import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/styling/app_validator.dart';
import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/core/widgets/primary_text_field.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/core/widgets/button_back_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final formKey = GlobalKey<FormState>();
  bool _ispasswordVisible = true;
  bool _isConfirmPasswordVisible = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(22),
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
                      width: 350.w,
                      child: Text(
                        "Create new password",
                        style: AppStyles.primaryHeadLineSyle,
                      ),
                    ),
                  ),
                  HeightSpace(10),
                  Text(
                    "Your new password must be unique from those previously used.",
                    style: AppStyles.grey15W500,
                  ),
                  HeightSpace(32),
                  PrimaryTextField(
                    hintText: "New password",
                    isPassword: _ispasswordVisible,
                    controller: passwordController,
                    validator: AppValidator.password,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _ispasswordVisible = !_ispasswordVisible;
                        });
                      },
                      icon: _ispasswordVisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                  ),
                  HeightSpace(15),
                  PrimaryTextField(
                    hintText: "Confirm password",
                    isPassword: _isConfirmPasswordVisible,
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
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isConfirmPasswordVisible =
                              !_isConfirmPasswordVisible;
                        });
                      },
                      icon: _isConfirmPasswordVisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                  ),
                  HeightSpace(38),
                  PrimaryButtonWidget(
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.passwordChangedScreen);
                      }
                    },
                    buttonText: "Reset Password",
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
