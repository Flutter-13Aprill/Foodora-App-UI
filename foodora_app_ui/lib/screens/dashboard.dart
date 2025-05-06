import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFFF0036)),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child:
                  Text('Menu', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            ListTile(title: Text('Home')),
            ListTile(title: Text('Profile')),
            ListTile(title: Text('Settings')),
          ],
        ),
      ),
      body: Stack(
        children: [
        //Drawer for navigation with options like Home, Profile, and Settings.
          Positioned(
            top: 50,
            left: 20,
            child: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu, size: 30),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/pic/men.png'),
            ),
          ),

          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Choose The', style: TextStyle(fontSize: 12)),
                SizedBox(height: 2),
                Text(
                  'Food you love',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // Search Field to allow users to search for food items.
          Positioned(
            top: 180,
            left: 20,
            right: 20,
            child: TextField(
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                hintText: 'Search for a food item',
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
          ),

          // Category Section for different food categories like Burger, Pizza, and Chicken.
          Positioned(
            top: 260,
            left: 20,
            child: Text(
              'Category',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),

          // Category
          Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  buildCategoryCard(
                    title: 'Burger',
                    imagePath: 'assets/pic/burger3.png',
                    isSelected: true,
                  ),
                  SizedBox(width: 15),
                  buildCategoryCard(
                    title: 'Pizza',
                    imagePath: 'assets/pic/pizza2.png',
                    isSelected: false,
                  ),
                  SizedBox(width: 15),
                  buildCategoryCard(
                    title: 'Chicken',
                    imagePath: 'assets/pic/chicken2.png',
                    isSelected: false,
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 430,
            left: 20,
            child: Text(
              'Burgers',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),

          // Food Item Cards shown in a PageView for selecting items like Zinger Burger and Burger1.
          Positioned(
            top: 470,
            left: 0,
            right: 0,
            bottom: 80,
            child: SizedBox(
              height: 200,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.55),
                itemCount: 2,
                itemBuilder: (context, index) {
                  final items = [
                    {
                      'image': 'assets/pic/burger4.png',
                      'title': 'Zinger Burger',
                      'price': '\$12',
                      'rating': 4,
                      'color': Colors.redAccent,
                      'textColor': Colors.white,
                    },
                    {
                      'image': 'assets/pic/burger1.png',
                      'title': 'Burger1',
                      'price': '\$14',
                      'rating': 5,
                      'color': Colors.white,
                      'textColor': Colors.black,
                    },
                  ];

                  final item = items[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      width: 140,
                      child: foodCard(
                        imagePath: item['image'] as String,
                        title: item['title'] as String,
                        price: item['price'] as String,
                        rating: item['rating'] as int,
                        color: item['color'] as Color,
                        textColor: item['textColor'] as Color,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // Add to Cart Button displayed in a circular form, which triggers a dialog for confirmation.
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFFF0036),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 244, 18, 18).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 14),
                      ),
                      content: Text(
                        'Do you want to add this item to your cart?',
                        style: TextStyle(fontSize: 14),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cancel',
                              style: TextStyle(color: Colors.grey)),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Add',
                              style: TextStyle(color: Colors.red)),
                        ),
                      ],
                    ),
                  );
                },
                icon: Image.asset(
                  'assets/pic/botton.png',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryCard({
    required String title,
    required String imagePath,
    required bool isSelected,
  }) {
    return Container(
      width: 140,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: isSelected ? Border.all(color: Colors.red, width: 2) : null,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 60, height: 60),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontSize: 9,
              color: isSelected ? Colors.red : Colors.grey.shade400,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget foodCard({
    required String imagePath,
    required String title,
    required String price,
    required int rating,
    required Color color,
    required Color textColor,
  }) {
    BoxDecoration boxDecoration;

    if (title == 'Zinger Burger') {
      boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFF0036), Color(0xFFFF6787)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      );
    } else {
      boxDecoration = BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      );
    }

    return Container(
      height: 200,
      padding: EdgeInsets.all(10),
      decoration: boxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(imagePath, height: 90, width: 90),
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: 12,
            ),
          ),
          Row(
            children: List.generate(
              5,
              (index) => Icon(Icons.star,
                  size: 12,
                  color: index < rating ? Colors.yellow : Colors.grey),
            ),
          ),
          SizedBox(height: 10),
          Text(
            price,
            style: TextStyle(color: textColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
