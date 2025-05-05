import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// StatefulWidget for displaying a row of food category tabs.
class FoodCategories extends StatefulWidget {
  const FoodCategories({super.key});

  @override
  State<FoodCategories> createState() => _FoodCategoriesState();
}

// State class for the FoodCategories widget, managing its state and providing ticker functionality.
class _FoodCategoriesState extends State<FoodCategories>
    with SingleTickerProviderStateMixin {
  // Declares a TabController to manage the state of the tabs, initializing it with the number of tabs and the vsync provider.
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    // Provides a TabController to all of its descendant widgets.
    return DefaultTabController(
      // Specifies the total number of tabs in the TabBar.
      length: 3,
      // Sets the index of the tab that should be initially selected (0 is the first tab).
      initialIndex: 0,
      // Builds the layout as a vertical column containing the TabBar.
      child: Column(
        children: [
          // SizedBox to define specific dimensions for the TabBar.
          SizedBox(
            width: 500.w, // Uses screen width for responsive sizing.
            height: 100.h, // Uses screen height for responsive sizing.

            // The TabBar widget displays a horizontal row of tabs.
            child: TabBar(
              // Assigns the initialized TabController to this TabBar.
              controller: _tabController,
              // Hides the default indicator line that appears below the selected tab.
              indicator: BoxDecoration(color: Colors.transparent),
              // Sets the size of the indicator to match the width of the tab.
              indicatorSize: TabBarIndicatorSize.tab,
              // Sets the weight (thickness) of the indicator to 0, effectively making it invisible.
              indicatorWeight: 0,
              // Defines the list of tabs to display. Each tab is a Card widget here.
              tabs: [
                // First tab: A Card displaying information about "Burgers".
                Card(
                  // Defines the shape of the Card with rounded corners.
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  // Sets the elevation of the Card, creating a shadow effect.
                  elevation: 2,
                  // Sets the color of the shadow.
                  shadowColor: Color(0xffFF0036),
                  // Container within the Card to style its content.
                  child: Container(
                    // Adds top padding to the content inside the Container.
                    padding: EdgeInsets.only(top: 18),
                    // Sets the width of the Container.
                    width: 95.w, // Uses screen width for responsive sizing.
                    // Sets the height of the Container.
                    height: 80.h, // Uses screen height for responsive sizing.
                    // Defines the visual appearance of the Container (border and background).
                    decoration: BoxDecoration(
                      // Adds a border around the Container with a specific color.
                      border: Border.all(color: Color(0xffFF0036)),
                      // Sets the border radius of the Container.
                      borderRadius: BorderRadius.circular(28),
                    ),
                    // Arranges its children (Image and Text) in a vertical column.
                    child: Column(
                      children: [
                        // Displays an image from the assets.
                        Image.asset("assets/images/Group 46.png"),
                        // Displays the text "Burgers" with a specific color.
                        Text(
                          "Burgers",
                          style: TextStyle(color: Color(0xffFF0036)),
                        ),
                      ],
                    ),
                  ),
                ),

                // Second tab: A Card displaying information about "Pizza".
                Card(
                  // Defines the shape of the Card with rounded corners.
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  // Container within the Card to style its content.
                  child: Container(
                    // Adds top padding to the content inside the Container.
                    padding: EdgeInsets.only(top: 18),
                    // Sets the width of the Container.
                    width: 95.w, // Uses screen width for responsive sizing.
                    // Sets the height of the Container.
                    height: 80.h, // Uses screen height for responsive sizing.
                    // Defines the visual appearance of the Container (border and background).
                    decoration: BoxDecoration(
                      // Sets the border radius of the Container.
                      borderRadius: BorderRadius.circular(28),
                    ),
                    // Arranges its children (Image and Text) in a vertical column.
                    child: Column(
                      children: [
                        // Displays an image from the assets.
                        Image.asset("assets/images/Group 19.png"),
                        // Displays the text "Pizza".
                        Text("Pizza"),
                      ],
                    ),
                  ),
                ),

                // Third tab: A Card displaying information about "chicken".
                Card(
                  // Defines the shape of the Card with rounded corners.
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  // Container within the Card to style its content.
                  child: Container(
                    // Adds top padding to the content inside the Container.
                    padding: EdgeInsets.only(top: 18),
                    // Sets the width of the Container.
                    width: 95.w, // Uses screen width for responsive sizing.
                    // Sets the height of the Container.
                    height: 80.h, // Uses screen height for responsive sizing.
                    // Defines the visual appearance of the Container (border and background).
                    decoration: BoxDecoration(
                      // Sets the border radius of the Container.
                      borderRadius: BorderRadius.circular(28),
                    ),
                    // Arranges its children (Container for image and Text) in a vertical column.
                    child: Column(
                      children: [
                        // Container to provide specific width to the image.
                        Container(
                          width: 30.w, // Uses screen width for responsive sizing.
                          // Displays an image from the assets.
                          child: Image.asset("assets/images/Group 29.png"),
                        ),
                        // Displays the text "chicken".
                        Text("chicken"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}