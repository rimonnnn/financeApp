import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/button_back_widget.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/card_page/widgets/custom_visa_card.dart';
import 'package:finance_ui/features/card_page/widgets/top_card_page.dart';
import 'package:finance_ui/features/main_screen/widgets/back_buttom_black_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeightSpace(16),
              TopCardPage(),
              HeightSpace(24),
              CustomVisaCard(
                boxColor: AppColors.primaryColor,
                cardType: 'X-Card',
                date: '12/24',
                code: '**** 3434',
                egNum: '23400 EG',
              ),
              HeightSpace(24),
              CustomVisaCard(
                boxColor: Colors.indigo,
                cardType: 'X-Card',
                date: '12/24',
                code: '**** 4545',
                egNum: '3209 EG',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
