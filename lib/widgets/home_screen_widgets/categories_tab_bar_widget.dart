import 'package:flutter/material.dart';

// -- Widget
import 'package:foodora/widgets/home_screen_widgets/category_chip_widget.dart';

// -- External Package
import 'package:google_fonts/google_fonts.dart';

class CategoriesTabBarWidget extends StatefulWidget {


/// [CategoriesTabBarWidget] represents the category chips displayed on the Home screen.
///
/// It takes two parameters:
///
/// [tabBarController] – The controller that manages tab selection and animations.
///
/// [currentIndexTabBar] – The index of the currently selected tab.
  CategoriesTabBarWidget({super.key , required this.currentIndexTabBar, required this.tabBarController});

  int currentIndexTabBar; 
  TabController tabBarController;
  @override
  State<CategoriesTabBarWidget> createState() => _CategoriesTabBarWidgetState();
}

class _CategoriesTabBarWidgetState extends State<CategoriesTabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      child: TabBar(
        onTap: (value) {
          setState(() {
            widget.currentIndexTabBar = value;
          });
        },
        controller: widget.tabBarController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelColor: Color(0xffFF0036),
        dividerColor: Colors.transparent,
        unselectedLabelColor: Color(0xffEAEAF5),
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),

        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(width: 1, color: Color(0xffFF0036)),
        ),
        
        tabs: [
          SizedBox(
            width: 130,
            height: 80,
            child: CategoryChipWidget(
              nameCategory: "Burgers",
              pathImageCategory:
                  'assets/home_screen/home_screen_savgs/fast-food-burger-svgrepo-com.svg',
              currentCategoryIndex: widget.currentIndexTabBar,
              categoryIndex: 0,
            ),
          ),

          SizedBox(
            width: 110,
            height: 70,
            child: CategoryChipWidget(
              nameCategory: "Pizza",
              pathImageCategory:
                  'assets/home_screen/home_screen_savgs/Group 19.svg',
              currentCategoryIndex: widget.currentIndexTabBar,
              categoryIndex: 1,
            ),
          ),

          SizedBox(
            width: 110,
            height: 70,
            child: CategoryChipWidget(
              nameCategory: "Chicken",
              pathImageCategory:
                  'assets/home_screen/home_screen_savgs/chicken.svg',
              currentCategoryIndex: widget.currentIndexTabBar,
              categoryIndex: 2,
            ),
          ),
        ],
      ),
    );
  }
}
