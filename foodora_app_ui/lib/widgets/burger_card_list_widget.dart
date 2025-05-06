import 'package:flutter/material.dart';
import 'package:foodora_app_ui/models/food_model.dart';
import 'package:foodora_app_ui/widgets/card_burger_widget.dart';

class BurgerCardListWidget extends StatefulWidget {
   BurgerCardListWidget({super.key,required this.foodWithSamCategory});
  List<FoodModel> foodWithSamCategory;
  @override
  State<BurgerCardListWidget> createState() => _BurgerCardListWidgetState();
}

class _BurgerCardListWidgetState extends State<BurgerCardListWidget> {
  PageController moveTo = PageController(viewportFraction: 0.5,);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 203,
      height: 230,
      // color: Colors.redAccent,
      child: PageView.builder(
        itemCount: widget.foodWithSamCategory.length,
        controller: moveTo,
        itemBuilder: (context, index) {
          final burger = widget.foodWithSamCategory[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CardBurgerWidget(food: burger),
          );
        },
      ),
    );
  }
}
