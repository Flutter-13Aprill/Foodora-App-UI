import 'package:flutter/material.dart';

// -- External Package
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodora/extensions/screen_size/screen_size.dart';
import 'package:foodora/widgets/home_screen_widgets/custom_theme_button.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodItemWidget extends StatelessWidget {
  /// [FoodItemWidget] represents each food item displayed on the Home screen.
  ///
  /// It takes four parameters:
  ///
  /// [nameFood] – The name of the food item.
  ///
  /// [foodImagePath] – The path to the food image in the assets folder.
  ///
  /// [foodItemIndex] – The index of the item in the list of food items.
  ///
  /// [currentPageViewIndex] – The current index of the PageView, used to determine the active item.
  const FoodItemWidget({
    super.key,
    required this.nameFood,
    required this.foodImagePath,
    required this.foodItemIndex,
    required this.currentPageViewIndex,
  });

  final String nameFood;
  final String foodImagePath;
  final int foodItemIndex;
  final int currentPageViewIndex;

  @override
  Widget build(BuildContext context) {
    final bool isItSameIndex = currentPageViewIndex == foodItemIndex;

    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder:
              (context) => AlertDialog(
                title: Text(
                  'foodora',
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                content: Text(
                  'This $nameFood contains more than 30 grams of protein.',
                ),
                actions: [CustomThemeButton()],
              ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            isItSameIndex
                ? BoxShadow(
                  color: Color.fromRGBO(255, 0, 54, 0.24),
                  blurRadius: 7.5,
                  offset: Offset(0, 8),
                )
                : BoxShadow(
                  color: Color.fromRGBO(205, 204, 241, 0.3),
                  blurRadius: 7.5,
                  offset: Offset(0, 8),
                ),
          ],
          gradient:
              isItSameIndex
                  ? LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 0, 54, 1),
                      Color.fromRGBO(255, 103, 135, 1),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  )
                  : LinearGradient(
                    colors: [Colors.white, Colors.white],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(
                width: isItSameIndex ? 120 : 100,
                height: isItSameIndex ? 120 : 100,
                foodImagePath,
                fit: BoxFit.scaleDown,
              ),

              SizedBox(height: 8),

              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameFood,
                      style: GoogleFonts.poppins(
                        fontSize: isItSameIndex ? 16 : 12,
                        fontWeight: FontWeight.w600,
                        color: isItSameIndex ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(height: 4),
                    SvgPicture.asset(
                      nameFood.contains('Zinger')
                          ? 'assets/home_screen/home_screen_savgs/Group 7.svg'
                          : 'assets/home_screen/home_screen_savgs/Group 10.svg',
                    ),
                    SizedBox(height: 8),
                    Text(
                      '\$12',
                      style: GoogleFonts.poppins(
                        fontSize: isItSameIndex ? 24 : 16,
                        fontWeight: FontWeight.w600,
                        color: isItSameIndex ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
