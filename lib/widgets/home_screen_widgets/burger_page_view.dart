import 'package:flutter/material.dart';

// -- Widget
import 'package:foodora/widgets/home_screen_widgets/food_item_widget.dart';

// -- Extensions
import 'package:foodora/extensions/screen_size/screen_size.dart';


class BurgerPageView extends StatefulWidget {
  
  /// [BurgerPageView] represents the food card displayed on the Home screen, specifically for burger items.
  const BurgerPageView({
    super.key,
    required this.pageController,
    required this.currentIndexPageView,
    required this.gettingCurrentPageIndex,
  });

  final int currentIndexPageView;
  final PageController pageController;
  final void Function(int currentPageViewIndex) gettingCurrentPageIndex;

  @override
  State<BurgerPageView> createState() => _BurgerPageViewState();
}

class _BurgerPageViewState extends State<BurgerPageView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      width: context.getWidth(),
      child: PageView(
        onPageChanged: widget.gettingCurrentPageIndex,
        padEnds: false,
        controller: widget.pageController,
        children: [
          FoodItemWidget(
            nameFood: 'Zinger Burger',
            foodImagePath:
                'assets/home_screen/home_screen_images/Group 26.png',
            foodItemIndex: 0,
            currentPageViewIndex: widget.currentIndexPageView,
          ),
          FoodItemWidget(
            nameFood: 'Chicken Burger ',
            foodImagePath:
                'assets/home_screen/home_screen_images/Checken Burger (1).png',
            foodItemIndex: 1,
            currentPageViewIndex: widget.currentIndexPageView,
          ),
          FoodItemWidget(
            nameFood: 'Zinger Burger',
            foodImagePath:
                'assets/home_screen/home_screen_images/Group 26.png',
            foodItemIndex: 2,
            currentPageViewIndex: widget.currentIndexPageView,
          ),
          FoodItemWidget(
            nameFood: 'Chicken Burger ',
            foodImagePath:
                'assets/home_screen/home_screen_images/Checken Burger (1).png',
            foodItemIndex: 3,
            currentPageViewIndex: widget.currentIndexPageView,
          ),
          SizedBox(width: 30),
        ],
      ),
    );
  }
}
