import 'package:flutter/material.dart';
import 'package:foodora_app_ui/models/food_model.dart';

class CartWidget extends StatelessWidget {
  CartWidget({super.key, required this.food});
  final FoodModel food;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image.asset(
                  food.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 120,
                ),
              ),
              Text(
                food.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              // Text(
              //   food.typeOfCheesy,
              //   style: TextStyle(fontSize: 16, color: Colors.black45),
              // ),
              Text(
                "\$ ${food.price}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              
            ],
          ),
        ),
       
      ],
    );
  }
}
