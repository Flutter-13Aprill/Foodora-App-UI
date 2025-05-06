import 'package:flutter/material.dart';
import 'package:may3rd/CustomWidgets/HomeScreen/category_card.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  final List<Map<String, String>> categoryData = [
    {'image': 'assets/images/burger.png', 'title': 'Burgers'},
    {'image': 'assets/images/pizza.png', 'title': 'Pizza'},
    {'image': 'assets/images/chicken.png', 'title': 'Chicken'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: categoryData.length,
        itemBuilder: (context, index) {
          return InkWell(
            borderRadius: BorderRadius.circular(23),
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: CategoryCard(
              imagePath: categoryData[index]['image']!,
              title: categoryData[index]['title']!,
              isSelected: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
