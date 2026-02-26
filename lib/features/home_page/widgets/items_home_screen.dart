import 'package:finance_ui/features/home_page/widgets/custom_home_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsHomeScreen extends StatelessWidget {
  const ItemsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(horizontal: 23.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.sp,
        crossAxisSpacing: 16.sp,
      ),
      children: [
        CustomHomeItem(
          iconData: Icons.send,
          title: 'Send Money',
          descrebtion: 'Take acc to acc',
        ),
        CustomHomeItem(
          iconData: Icons.wallet,
          title: 'Pay the bill',
          descrebtion: 'Lorem ipsum',
        ),
        CustomHomeItem(
          iconData: Icons.send,
          title: 'Request',
          descrebtion: 'Lorem ipsum',
        ),
        CustomHomeItem(
          iconData: Icons.contact_emergency,
          title: 'Contact',
          descrebtion: 'Lorem ipsum',
        ),
      ],
    );
  }
}
