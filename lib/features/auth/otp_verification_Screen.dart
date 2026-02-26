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
import 'package:pin_code/pin_code.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController pinCodeController = TextEditingController();

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
                        "OTP Verification",
                        style: AppStyles.primaryHeadLineSyle,
                      ),
                    ),
                  ),
                  HeightSpace(10),
                  Text(
                    "Enter the verification code we just sent on your email address.",
                    style: AppStyles.grey15W500,
                  ),
                  HeightSpace(32),
                  PinCode(
                    enableActiveFill: true,
                    pinTheme: PinCodeTheme(
                      activeFillColor: AppColors.whiteColor,
                      inactiveFillColor: Color(0xffF7F8F9),
                      inactiveColor: Color(0xffE8ECF4),
                      activeColor: AppColors.primaryColor,
                      errorBorderColor: Colors.redAccent,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8.r),
                      fieldHeight: 60.sp,
                      fieldWidth: 70.sp,
                    ),
                    cursorColor: AppColors.primaryColor,
                    textStyle: AppStyles.primaryHeadLineSyle.copyWith(
                      fontSize: 22,
                    ),
                    obscureText: false,
                    appContext: context,
                    length: 4,
                    controller: pinCodeController,
                    onEditingComplete: () {
                      GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                    },
                  ),
                  HeightSpace(32),
                  PrimaryButtonWidget(
                    onPress: () {
                      GoRouter.of(context).pushNamed(AppRoutes.createPasswordScreen);
                    },
                    buttonText: "Verify",
                  ),
                  HeightSpace(330),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn’t received code?",
                        style: AppStyles.blue15W500Style,
                      ),
                      InkWell(
                        onTap: () {
                          // Resend OTP logic here !!!
                        },
                        child: Text(
                          "  Resend",
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
