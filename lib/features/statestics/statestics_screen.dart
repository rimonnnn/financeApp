import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/card_page/widgets/top_card_page.dart';
import 'package:finance_ui/features/statestics/widgets/chart_widget.dart';
import 'package:finance_ui/features/statestics/widgets/custom_items.dart';
import 'package:flutter/material.dart';

class StatesticsScreen extends StatelessWidget {
  const StatesticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            HeightSpace(16),
            TopCardPage(),
            HeightSpace(24),
            ChartWidget(),
            HeightSpace(16),
            Row(
              children: [
                CustomItems(
                  iconData: Icons.cloud_download,
                  title: '12000 EG',
                  subTitle: 'Income',
                ),
                WidthSpace(15),
                CustomItems(
                  iconData: Icons.cloud_upload,
                  title: '35000 EG',
                  subTitle: 'Outcome',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
