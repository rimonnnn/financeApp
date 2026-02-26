import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/home_page/widgets/custom_caroules_slider.dart';
import 'package:finance_ui/features/home_page/widgets/items_home_screen.dart';
import 'package:finance_ui/features/home_page/widgets/top_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: SafeArea(
          child: Column(
            children: [
              HeightSpace(19),
              TopNotification(),
              HeightSpace(24),
              CustomCaroulesSlider(),
              HeightSpace(24),
              Expanded(child: ItemsHomeScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
