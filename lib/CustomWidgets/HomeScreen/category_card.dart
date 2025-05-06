import 'package:flutter/material.dart';
import 'package:may3rd/data/screen_size.dart';

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isSelected;

  const CategoryCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    Color selectedColor = const Color.fromRGBO(255, 0, 54, 1);
    Color unselectedColor = const Color.fromRGBO(168, 167, 167, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        elevation: isSelected ? 8 : 2,
        shadowColor:
            isSelected
                ? selectedColor.withValues(alpha: 0.3)
                : unselectedColor.withValues(alpha: 0.2),
        child: Container(
          height: context.screenHeight * 0.082,
          width: context.screenWidth * 0.28,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: isSelected ? selectedColor : unselectedColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(23),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                AssetImage(imagePath),
                size: 50,
                color: isSelected ? selectedColor : unselectedColor,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? selectedColor : unselectedColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
