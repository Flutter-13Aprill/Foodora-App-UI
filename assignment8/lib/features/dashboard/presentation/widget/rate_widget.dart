import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({super.key, required this.initialRating});
  final double initialRating;
  @override
  Widget build(BuildContext context) {
    return RatingBar.readOnly(
      filledIcon: Icons.star,
      emptyIcon: Icons.star_border,
      initialRating: initialRating,
      maxRating: 5,
      size: 18,
    );
  }
}
