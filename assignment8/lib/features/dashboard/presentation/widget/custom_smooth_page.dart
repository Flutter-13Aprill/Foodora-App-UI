import 'package:assignment8/core/theme/app_palette.dart';
import 'package:assignment8/features/dashboard/data/model/burgers_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPage extends StatelessWidget {
  const CustomSmoothPage({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: burgerDetails.length,
      effect: WormEffect(
        dotColor: AppPalette.borderColor,
        activeDotColor: AppPalette.redColor,
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }
}
