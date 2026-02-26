import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/profile_page/widgets/info_profile_page.dart';
import 'package:finance_ui/features/profile_page/widgets/top_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            HeightSpace(16),
            TopProfilePage(),
            HeightSpace(39),
            ClipOval(
              child: Image.asset(
                AppAssets.profileImage,
                width: 100.w,
                height: 100.w,
                fit: BoxFit.fill,
              ),
            ),
            HeightSpace(9),
            InfoProfilePage(
              keyData: "Full Name",
              valueData: "Rimon Abdelmasih",
            ),
            HeightSpace(16),
            InfoProfilePage(
              keyData: "Email",
              valueData: "rimonabdelmasih@gmail.com",
            ),
            HeightSpace(16),
            InfoProfilePage(keyData: "Phone Number", valueData: "01220834752"),
            HeightSpace(16),
            InfoProfilePage(keyData: "Address", valueData: "Cairo,Egypt"),
          ],
        ),
      ),
    );
  }
}
