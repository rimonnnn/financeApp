import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/home_page/widgets/custom_cade_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCaroulesSlider extends StatefulWidget {
  const CustomCaroulesSlider({super.key});

  @override
  State<CustomCaroulesSlider> createState() => _CustomCaroulesSliderState();
}

class _CustomCaroulesSliderState extends State<CustomCaroulesSlider> {
  double currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          // disableGesture: true,
          options: CarouselOptions(
            padEnds: false,
            // reverse: false,
            enableInfiniteScroll: true,
            disableCenter: true,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            viewportFraction: 0.7,
            initialPage: 0,
            height: 263.0,
            onPageChanged: (index, reason) {
              setState(() {
                currentPage = index.toDouble();
              });
            },
          ),
          items: [
            CustomCadeItem(
              boxColor: AppColors.primaryColor,
              cardType: 'X-Card',
              date: '12/24',
              code: '**** 3434',
              egNum: '23400 EG',
            ),

            CustomCadeItem(
              boxColor: Colors.indigo,
              cardType: 'M-Card',
              date: '03/12',
              code: '**** 3454',
              egNum: '26700 EG',
            ),
            CustomCadeItem(
              boxColor: Colors.teal,
              cardType: 'M-Card',
              date: '04/11',
              code: '**** 5654',
              egNum: '35700 EG',
            ),
          ],
        ),
        HeightSpace(16),
        DotsIndicator(
          dotsCount: 3,
          position: currentPage,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: Color(0xffE3E9ED),
          ),
        ),
      ],
    );
  }
}
