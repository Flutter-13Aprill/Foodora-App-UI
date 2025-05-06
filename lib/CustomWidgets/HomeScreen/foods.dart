import 'package:flutter/material.dart';
import 'package:may3rd/CustomWidgets/HomeScreen/food_card.dart';
import 'package:may3rd/data/screen_size.dart';

class Foods extends StatefulWidget {
  const Foods({super.key});

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> categoryData = [
    {
      'image': 'assets/images/zingerBurger.png',
      'title': 'Zinger Burger',
      'rating': 4.5,
      'price': 12.0,
    },
    {
      'image':
          '/Users/solym/src/projects/may3rd/Foodora-App-UI/assets/images/chickenBurger.png',
      'title': 'Chicken Burger',
      'rating': 3.0,
      'price': 15.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.3,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: categoryData.length,
        itemBuilder: (context, index) {
          final item = categoryData[index];

          return InkWell(
            borderRadius: BorderRadius.circular(34),
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: FoodCard(
              imagePath: item['image'] as String,
              title: item['title'] as String,
              rating: item['rating'] as double,
              price: item['price'] as double,
              isSelected: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
