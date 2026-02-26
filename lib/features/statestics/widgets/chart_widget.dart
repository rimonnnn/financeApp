import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightSpace(32),
          ChartHeader(),
          HeightSpace(40),
          Expanded(child: ChartWidget()),
        ],
      ),
    );
  }
}

class ChartHeader extends StatelessWidget {
  const ChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Jan 28 - May 28, 2025", style: AppStyles.black16SemiBold),
        const Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          height: 38.h,
          decoration: BoxDecoration(
            color: const Color(0xffB9C4FF),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              Text("Monthly", style: AppStyles.black16SemiBold),
              const Icon(Icons.arrow_drop_down_outlined),
            ],
          ),
        ),
      ],
    );
  }
}

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  final List<double> values = const [8000, 6500, 4000, 3000, 5000];
  final List<String> months = const ["Jan", "Feb", "Mar", "Apr", "May"];

  @override
  Widget build(BuildContext context) {
    final double maxValue = values.reduce((a, b) => a > b ? a : b);
    final double chartHeight = 180.h;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        /// Y Axis
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("8K", style: AppStyles.grey12Medium),
            const HeightSpace(16),
            Text("6K", style: AppStyles.grey12Medium),
            const HeightSpace(16),
            Text("4K", style: AppStyles.grey12Medium),
            const HeightSpace(16),
            Text("2K", style: AppStyles.grey12Medium),
            const HeightSpace(16),
            Text("0", style: AppStyles.grey12Medium),
          ],
        ),

        WidthSpace(16),

        /// Bars Area
        Expanded(
          child: SizedBox(
            height: chartHeight + 40.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(values.length, (index) {
                final double barHeight =
                    (values[index] / maxValue) * chartHeight;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 18.w,
                      height: barHeight,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8.r),
                        ),
                      ),
                    ),
                    HeightSpace(8),
                    Text(months[index], style: AppStyles.grey12Medium),
                  ],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
