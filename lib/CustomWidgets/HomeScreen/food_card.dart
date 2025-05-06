import 'package:flutter/material.dart';
import 'package:may3rd/data/screen_size.dart';

class FoodCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final double rating;
  final double price;
  final bool isSelected;

  const FoodCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.rating,
    required this.price,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.4,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        color: isSelected ? null : Colors.white,
        gradient:
            isSelected
                ? const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(255, 0, 54, 1),
                    Color.fromRGBO(255, 103, 135, 1),
                  ],
                )
                : null,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(255, 0, 54, 0.24),
            blurRadius: 7.5,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Food Image
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  imagePath,
                  width: 64,
                  height: 64,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Title
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            // Rating stars
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(5, (index) {
                return Icon(
                  index < rating.round() ? Icons.star : Icons.star_border,
                  size: 16,
                  color: isSelected ? Colors.white : Colors.amber,
                );
              }),
            ),
            const SizedBox(height: 4),
            // Price
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isSelected ? Colors.white : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
