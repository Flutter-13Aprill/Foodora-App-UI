import 'package:flutter/material.dart';

class Food_Dashboard_Screen extends StatefulWidget {
  @override
  _Food_Dashboard_Screen_State createState() => _Food_Dashboard_Screen_State();
}

class _Food_Dashboard_Screen_State extends State<Food_Dashboard_Screen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(viewportFraction: 0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(width: MediaQuery.of(context).size.width * 0.75),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            // Menu icon and profile picture
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/Profile-Image.png"),
                  radius: 20,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text("Choose the", style: TextStyle(fontSize: 20)),
            Text(
              "Food you love",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            SizedBox(height: 20),

            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: "  Search for a food item",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 40),
            // Categories
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryCard(Icons.lunch_dining, "Burgers", true),
                _buildCategoryCard(Icons.local_pizza, "Pizza", false),
                _buildCategoryCard(Icons.set_meal, "Chicken", false),
              ],
            ),
            SizedBox(height: 40),

            // Section heading
            Text(
              "Burgers",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 25),

            // PageView inside fixed-height container
            SizedBox(
              height: 260,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 5,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  bool isFocused = index == _currentPage;
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: isFocused ? 0 : 10,
                    ),
                    child: _buildFoodCard(
                      title: index == 0 ? "Zinger Burger" : "Chicken Burger",
                      price: (12 + index).toString(),
                      imageAsset:
                          index == 0 ? "assets/Card1.png" : "assets/Card2.png",
                      backGroundColor:
                          index % 2 == 0 ? Colors.redAccent : Colors.white,
                      darkText: index % 2 != 0,
                      rating: 4 + (index % 2),
                      height: 220,
                      width: 180,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40),

            // Dots indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: _currentPage == index ? 10 : 8,
                  height: _currentPage == index ? 10 : 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? Colors.red
                        : Colors.grey.shade400,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),

      // Floating cart button
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 20,
              offset: Offset(0, 8),
            ),
            BoxShadow(
              color: Colors.white.withOpacity(0.8),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(-2, -2),
            ),
          ],
        ),
        child: IconButton(
          icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (_) => Container(
                padding: EdgeInsets.all(16),
                height: 200,
                child: Column(
                  children: [
                    Text(
                      "Cart Summary",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Zinger Burger"),
                      trailing: Text("\$12"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Category card UI
  Widget _buildCategoryCard(IconData icon, String label, bool selected) {
    return Container(
      margin: EdgeInsets.only(right: 7),
      width: 110,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: selected ? Colors.red : Colors.grey.shade200,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: selected ? Colors.red.withOpacity(0.2) : Colors.grey.shade300,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: selected ? Colors.red : Colors.grey),
          SizedBox(height: 6),
          Text(
            label,
            style: TextStyle(
              color: selected ? Colors.red : Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  // Food card UI
  Widget _buildFoodCard({
    required String title,
    required String price,
    required String imageAsset,
    required Color backGroundColor,
    required bool darkText,
    required int rating,
    required double height,
    required double width,
  }) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(imageAsset, height: 80, fit: BoxFit.contain),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: darkText ? Colors.black87 : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                size: 14,
                color: index < rating ? Colors.amber : Colors.grey.shade300,
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(
            '\$$price',
            style: TextStyle(
              color: darkText ? Colors.black : Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
