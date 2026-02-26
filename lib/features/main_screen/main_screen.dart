import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/features/card_page/my_card_screen.dart';
import 'package:finance_ui/features/home_page/home_page_screen.dart';
import 'package:finance_ui/features/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomePageScreen(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.brown,
    ),
    MyCardScreen(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 2,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.homeIcon,
              color: currentIndex == 0 ? AppColors.primaryColor : Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.statisticIcon,
              color: currentIndex == 1 ? AppColors.primaryColor : Colors.grey,
            ),

            label: "Statistic",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 48.sp,
              height: 48.sp,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset(AppAssets.plusIcon),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.myCardIcon,
              color: currentIndex == 3 ? AppColors.primaryColor : Colors.grey,
            ),
            label: "My Card",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.profileIcon,
              color: currentIndex == 4 ? AppColors.primaryColor : Colors.grey,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
