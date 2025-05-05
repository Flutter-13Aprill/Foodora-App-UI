import 'package:flutter/material.dart'; // Imports the core Flutter widgets library for building UI.
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Imports the ScreenUtil library for responsive UI design across different screen sizes.
import 'package:foodor_aapp/widgets/food_categories.dart'; // Imports the custom FoodCategories widget, likely used to display food categories.

// StatefulWidget for the main dashboard screen of the application.
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key}); // Constructor for the DashboardScreen widget, taking an optional key.

  @override
  State<DashboardScreen> createState() => _DashboardScreenState(); // Creates the mutable state for this widget.
}

class _DashboardScreenState extends State<DashboardScreen> {
  // Function to display a confirmation dialog to the user.
  void _showDilog() {
    showDialog(
      context: context, // Provides the current context of the widget tree.
      builder: (context) => AlertDialog( // Builds an AlertDialog widget.
        title: Text("are you sure to add this item"), // Sets the title of the alert dialog.
        actions: [
          // A button that, when pressed, will pop the current route (close the dialog).
          TextButton(onPressed: (Navigator.of(context).pop), child: Text("yes")),
          // Another button that also pops the current route (close the dialog).
          TextButton(onPressed: (Navigator.of(context).pop), child: Text("close")),
        ],
      ),
    );
  }

  // Function to display a bottom sheet with detailed information about a selected food item.
  void showBottomSheetItem(BuildContext context, String itemName) {
    String details = ""; // Variable to store the detailed description of the item.
    String imageUrl = ""; // Variable to store the path to the image of the item.
    double price = 0.0; // Variable to store the price of the item.

    // Conditional logic to set the details, image URL, and price based on the selected item's name.
    if (itemName == "Zinger Burger") {
      details = "A fiery and flavorful burger with a crispy fried chicken fillet, spicy mayo, lettuce, and tomato.";
      imageUrl = "assets/images/12.png"; // Placeholder for the actual image asset path.
      price = 12.0;
    } else if (itemName == " Chicken Burger ") {
      details = "A classic and juicy burger featuring a tender grilled chicken patty, fresh lettuce, and creamy sauce.";
      imageUrl = "assets/images/13.png"; // Placeholder for the actual image asset path.
      price = 15.0;
    }

    showBottomSheet(
      context: context, // Provides the current context of the widget tree.
      builder: (ctx) => Container( // Builds the content of the bottom sheet within a Container.
        padding: EdgeInsets.all(16), // Adds padding around the content of the bottom sheet.
        child: Column(
          mainAxisSize: MainAxisSize.min, // Makes the column take up only the necessary vertical space.
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns the children of the column to the start (left).
          children: [
            // Text indicating what the user chose.
            Text("You chose:", style: TextStyle(fontSize: 16, color: Colors.grey[600])),
            SizedBox(height: 8), // Adds vertical spacing.
            // Text displaying the name of the selected item.
            Text(itemName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 12), // Adds vertical spacing.
            // Conditionally displays the image if the imageUrl is not empty.
            if (imageUrl.isNotEmpty) Image.asset(imageUrl, height: 80.h, width: 80.w, fit: BoxFit.contain),
            SizedBox(height: 12), // Adds vertical spacing.
            // Text label for the item details.
            Text("Details:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 4), // Adds vertical spacing.
            // Text displaying the detailed description of the item.
            Text(details, style: TextStyle(fontSize: 14)),
            SizedBox(height: 12), // Adds vertical spacing.
            // Text displaying the price of the item.
            Text("Price: \$${price.toStringAsFixed(2)}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 15), // Adds vertical spacing.
            // Row containing the "Add to Cart" and "Cancel" buttons.
            Row(
              children: [
                // Button to add the item to the cart.
                ElevatedButton(
                  child: Text("Add to Cart"),
                  onPressed: () {
                    _showDilog(); // Shows the confirmation dialog.
                    // Displays a SnackBar at the bottom of the screen to confirm the item was added.
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('$itemName added to cart!')),
                    );
                  },
                ),
                SizedBox(width: 15), // Adds horizontal spacing between the buttons.
                // Button to cancel the action and close the bottom sheet.
                ElevatedButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.pop(ctx); // Closes the bottom sheet.
                    // Displays a SnackBar to confirm the cancellation.
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('  Cancel $itemName  ')),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Sets the background color of the screen to white.
      appBar: AppBar(
        backgroundColor: Colors.white, // Sets the background color of the app bar to white.
        actions: [
          // Container to hold the app logo or image in the app bar.
          Container(width: 100, height: 100, child: Image.asset("assets/images/10.png", fit: BoxFit.cover)),
        ],
      ),
      drawer: Drawer( // Creates a side drawer menu.
        child: ListView(
          padding: EdgeInsets.zero, // Removes default padding from the ListView.
          children: <Widget>[
            // List item for "Burger" in the drawer.
            ListTile(leading: Icon(Icons.restaurant), title: Text('Burger'), onTap: () => Navigator.pop(context)),
            // List item for "Pizza" in the drawer.
            ListTile(leading: Icon(Icons.local_pizza), title: Text('Pizza'), onTap: () => Navigator.pop(context)),
            // List item for "Ice Cream" in the drawer.
            ListTile(leading: Icon(Icons.icecream), title: Text('Ice Cream'), onTap: () => Navigator.pop(context)),
          ],
        ),
      ),
      body: Column( // Arranges widgets vertically.
        children: [
          // Text aligned to the left-bottom side.
          Align(alignment: Alignment(-.9, .8), child: Text("Choose the")),
          SizedBox(height: 2), // Adds vertical spacing.
          // Bold text aligned similarly.
          Align(
            alignment: Alignment(-.9, .8),
            child: Text("Food you love", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          // Container for the search TextField.
          Container(
            width: 400,
            height: 48,
            margin: EdgeInsets.only(left: 25, right: 25, top: 20), // Adds margins around the TextField.
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for a food item", // Placeholder text for the TextField.
                label: Text("Search for a food item"), // Label text for the TextField.
                border: OutlineInputBorder( // Creates an outlined border for the TextField.
                  borderSide: BorderSide(color: Color(0XFFEAEAF5)), // Sets the color of the border.
                  borderRadius: BorderRadius.circular(35), // Rounds the corners of the border.
                ),
              ),
            ),
          ),
          // Container for the "Categories" heading.
          Container(
            margin: EdgeInsets.only(top: 15), // Adds top margin.
            alignment: Alignment(-.9, .8), // Aligns the text to the left-bottom.
            child: Text("Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          FoodCategories(), // Displays the food categories widget.
          // Container for the "Burgeres" heading.
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 10), // Adds top and bottom margins.
            alignment: Alignment(-.9, .8), // Aligns the text to the left-bottom.
            child: Text("Burgeres", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          // Padding around the PageView for the burger items.
          Padding(
            padding: const EdgeInsets.only(right: 115.0), // Adds right padding.
            child: SizedBox(
              height: 270.h, // Sets the height of the SizedBox responsively.
              width: 555.w, // Sets the width of the SizedBox responsively.
              child: PageView(
                scrollDirection: Axis.horizontal, // Enables horizontal scrolling for the items.
                controller: PageController(keepPage: true, viewportFraction: .7), // Manages the scrolling behavior, showing 70% of each item.
                children: [
                  // Builder for the first burger item (Zinger Burger).
                  Builder(
                    builder: (innerContext) => GestureDetector( // Detects taps on the container.
                      onTap: () => showBottomSheetItem(innerContext, "Zinger Burger"), // Shows the bottom sheet when tapped.
                      child: Container(
                        margin: EdgeInsets.only(right: 25, bottom: 15), // Adds margin around the item container.
                        decoration: BoxDecoration(
                          color: Color(0xffFF0036), // Sets the background color.
                          borderRadius: BorderRadius.circular(38), // Rounds the corners.
                          boxShadow: [BoxShadow(color: Color(0xffFF0036), offset: Offset(0, 7), blurRadius: 2, spreadRadius: 2)], // Adds a shadow.
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the left.
                          children: [
                            // Padding and display of the burger image.
                            Padding(padding: const EdgeInsets.only(left: 24.0, top: 18.0), child: Image.asset("assets/images/12.png", height: 100, width: 150, fit: BoxFit.contain)),
                            // Padding and display of the burger name.
                            Padding(padding: const EdgeInsets.only(left: 24.0, top: 8.0), child: Text("Zinger Burger", style: TextStyle(fontWeight: FontWeight.bold))),
                            // Padding and display of the rating stars.
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0, top: 2.0),
                              child: Row(children: [
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                Icon(Icons.star_border, color: Colors.amber, size: 14),
                              ]),
                            ),
                            // Padding and display of the burger price.
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0, top: 16.0),
                              child: Text("\$12", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Builder for the second burger item (Chicken Burger).
                  Builder(
                    builder: (innerContext) => GestureDetector( // Detects taps.
                      onTap: () => showBottomSheetItem(innerContext, " Chicken Burger "), // Shows bottom sheet on tap.
                      child: Container(
                        margin: EdgeInsets.only(left: 5.0, right: 20, bottom: 15), // Adds margin.
                        decoration: BoxDecoration(
                          color: Colors.white, // Sets background color to white.
                          borderRadius: BorderRadius.circular(26), // Rounds corners.
                          boxShadow: [BoxShadow(color: Color.fromARGB(205, 211, 213, 204), offset: Offset(0, 7), blurRadius: 4, spreadRadius: 1)], // Adds shadow.
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start, // Aligns children to the top.
                          crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the left.
                          children: [
                            // Padding and display of the chicken burger image.
                            Padding(padding: const EdgeInsets.only(left: 24.0, top: 18.0), child: Image.asset("assets/images/13.png", height: 100, width: 150, fit: BoxFit.contain)),
                            // Padding and display of the burger name.
                            Padding(padding: const EdgeInsets.only(left: 24.0, top: 8.0), child: Text("Chicken Burger ", style: TextStyle(fontWeight: FontWeight.bold))),
                            // Padding and display of the rating stars.
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0, top: 2.0),
                              child: Row(children: [
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                Icon(Icons.star_border, color: Colors.amber, size: 14),
                                Icon(Icons.star_border, color: Colors.amber, size: 14),
                              ]),
                            ),
                            // Padding and display of the burger price.
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0, top: 16.0),
                              child: Text("\$15", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20), // Adds vertical spacing.
          // Container for an advertisement image.
          Container(width: 400, height: 50, child: Image.asset("assets/images/19.png")),
          // Aligning the shopping bag icon to the bottom right.
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 8), // White border.
                shape: BoxShape.circle, // Circular shape for the outer container.
              ),
              child: Container(
                width: 45,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xffFF0036), // Red background color.
                  shape: BoxShape.circle, // Circular shape for the inner container.
                  boxShadow: [BoxShadow(color: Color(0xffFF0036), offset: Offset(0, 4), blurRadius: 4)], // Shadow.
                ),
                child: Icon(Icons.shopping_bag_outlined, size: 40, color: Colors.white), // Shopping bag icon.
              ),
            ),
          ),
        ],
      ),
    );
  }
}