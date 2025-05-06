import 'package:flutter/material.dart';
import 'package:foodora_app_ui/models/food_model.dart';

class CardBurgerWidget extends StatefulWidget {
  CardBurgerWidget({super.key, required this.food});
  FoodModel food;
  @override
  State<CardBurgerWidget> createState() => _CardBurgerWidgetState();
}

class _CardBurgerWidgetState extends State<CardBurgerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            widget.food.clicked = !widget.food.clicked;
            if (widget.food.clicked == true) {
              cart.add(widget.food);
            } else {
              cart.remove(widget.food);
            }
            print(cart.length);
            setState(() {});
          },
          child: Container(
            height: 211,
            width: 173,
            padding: EdgeInsets.all(23),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  blurRadius: 16,
                  offset: Offset(4, 4),
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors:
                    widget.food.clicked
                        ? [
                          Color.fromRGBO(255, 0, 54, 1),
                          Color.fromRGBO(255, 0, 54, 0.5),
                        ]
                        : [Colors.white, Colors.white],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(),
                Image.asset(
                  width: widget.food.width,
                  height: widget.food.higth,
                  widget.food.imagePath,
                ),
                Text(widget.food.title, style: TextStyle(fontSize: 12)),
                Image.asset(width: 44, height: 6, "assets/images/Group 7.png"),
                Text(
                  widget.food.price,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: widget.food.clicked ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
