import 'dart:ui';

import 'package:foodora_app_ui/models/category_model.dart';

class FoodModel {
  String id;
  String title;
  String price;
  String imagePath;
  String category;
  double width;
  double higth;
  String rate;
  bool clicked = false;
  Color color;
  FoodModel({
    required this.id,
    required this.title,
    required this.imagePath,
    required this.category,
    required this.price,
    required this.rate,
    required this.color,
    required this.higth,
    required this.width,
    required this.clicked,
  });
}
// List<FoodModel> foodsWithSameCategory = selectedCategorys.isEmpty
//   ? listOfFood
//   : listOfFood.where((food) => selectedCategorys.contains(food.category)).toList();
List<FoodModel> listOfFood = [
  FoodModel(
    title: 'Zinger Burger',
    imagePath: 'assets/images/burger1.png',
    color: Color.fromRGBO(255, 0, 54, 0.24),
    price: '\$12',
    rate: '',
    id: '0',
    higth: 88,
    width: 136,
    clicked: true, category: 'Burgers',
  ),
  FoodModel(
    title: 'Chicken Burger ',
    imagePath: 'assets/images/burger2.png',
    color: Color.fromRGBO(234, 234, 245, 1),
    price: '\$15',
    rate: '',
    id: '1',
    higth: 91,
    width: 111,
    clicked: false, category: 'Burgers',
  ),
  FoodModel(
    title: 'chicken',
    imagePath: 'assets/images/chicken.avif',
    color: Color.fromRGBO(234, 234, 245, 1),
    price: '\$15',
    rate: '',
    id: '1',
    higth: 91,
    width: 111,
    clicked: false, category: 'chicken',
  ),
];
//user cart
List<FoodModel> cart = [];