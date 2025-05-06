import 'package:flutter/material.dart';

class FoodCategory extends StatefulWidget {
  FoodCategory(
      {super.key,
      required this.foodCategoryName,
      required this.foodCategoryImage,
      required this.foodCategoryIndex,
      required this.currentCategoryIndex});

  final String foodCategoryName;
  final String foodCategoryImage;
  final int foodCategoryIndex;
  int currentCategoryIndex;

  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      width: 110,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(blurRadius: 5, color: Color.fromARGB(75, 39, 39, 39))
          ],
          borderRadius: BorderRadius.circular(23)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.foodCategoryImage,
            color: widget.currentCategoryIndex == widget.foodCategoryIndex
                ? const Color.fromARGB(255, 255, 0, 54)
                : const Color.fromARGB(255, 168, 167, 167),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.foodCategoryName,
            style: TextStyle(
                color: widget.currentCategoryIndex == widget.foodCategoryIndex
                    ? const Color.fromARGB(255, 255, 0, 54)
                    : const Color.fromARGB(255, 168, 167, 167),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
