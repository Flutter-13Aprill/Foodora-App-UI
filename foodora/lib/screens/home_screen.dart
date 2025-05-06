import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Map<String, dynamic>> burgers = [
    {
      'title': 'Zinger Burger',
      'price': '\$12',
      'image': 'assets/zengerBurger.png',
      'color': Colors.redAccent,
    },
    {
      'title': 'Chicken Burger',
      'price': '\$15',
      'image': 'assets/CheckenBurger.png',
      'color': Colors.white,
    },
    {
      'title': 'Zinger Burger',
      'price': '\$12',
      'image': 'assets/zengerBurger.png',
      'color': Colors.white,
    },
    {
      'title': 'Chicken Burger',
      'price': '\$15',
      'image': 'assets/CheckenBurger.png',
      'color': Colors.white,
    },
    {
      'title': 'Zinger Burger',
      'price': '\$12',
      'image': 'assets/zengerBurger.png',
      'color': Colors.white,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [Image.asset('assets/boy.png'), SizedBox(width: 20)],
          // leading: IconButton(
          //   onPressed: () {
          //     Scaffold.of(context).openDrawer();
          //   },
          //   icon: Icon(Icons.menu),
          //   iconSize: 36,
          // ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Text('oyur orders'),
              Text('oyur orders'),
              Text('oyur orders'),
              Text('oyur orders'),
              Text('oyur orders'),
              Text('oyur orders'),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose the ', style: TextStyle(fontSize: 20)),
                  Text(
                    'Food you love',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),

                  SizedBox(height: 32),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 234, 234, 245),
                      ),
                      borderRadius: BorderRadius.circular(20), // Border radius
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove default border
                        hintText: 'Search for a food item',
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 190, 190, 190),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Scrollable TabBar
                      SizedBox(
                        height: 100,
                        child: TabBar(
                          dividerHeight: 0,
                          isScrollable: true, // makes it scrollable
                          indicator: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          tabs: [
                            Container(
                              width: 120,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      136,
                                      136,
                                    ), // shadow color
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(
                                      0,
                                      4,
                                    ), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/burger.png'),
                                  SizedBox(height: 4),
                                  Text(
                                    'Burgers',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        0,
                                        0,
                                      ),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            buildCategoryTab('assets/pizza.png', "Pizza"),
                            buildCategoryTab('assets/checkin.png', "Chicken"),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Burgers",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 330,
                            child: PageView.builder(
                              controller: PageController(viewportFraction: 0.7),
                              itemCount: burgers.length,
                              itemBuilder: (context, index) {
                                final burger = burgers[index];
                                return burgerCard(
                                  title: burger['title'],
                                  price: burger['price'],
                                  image: burger['image'],
                                  isPrimary: index == 0,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 255, 166, 166), // shadow color
                              spreadRadius: 0.5,
                              blurRadius: 3,
                              offset: Offset(0, 4), // changes position of shadow
                            ),
                          ]
                        ),
                        child: Image.asset('assets/bag.png'),
                      )
                    ],)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildCategoryTab(String imgName, String label) {
  return Container(
    width: 120,
    height: 80,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
      border: Border.all(color: const Color.fromARGB(255, 236, 236, 236)),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 166, 166, 166), // shadow color
          spreadRadius: 0.5,
          blurRadius: 2,
          offset: Offset(0, 4), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imgName),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: const Color.fromARGB(255, 236, 236, 236),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget burgerCard({ // this to display all page views sliders
  required String title,
  required String price,
  required String image,
  bool isPrimary = false,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      gradient:
          isPrimary
              ? LinearGradient(
                colors: [
                  const Color.fromARGB(255, 255, 38, 38),
                  const Color.fromARGB(255, 255, 92, 146),
                ],
              )
              : null,
      color: isPrimary ? null : Colors.white,
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 209, 209, 209),
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image
        Expanded(child: Center(child: Image.asset(image, height: 120))),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: isPrimary ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Row(
          children: List.generate(
            4,
            (i) => Icon(Icons.star, color: Colors.yellow, size: 16),
          ),
        ),
        SizedBox(height: 4),
        Text(
          price,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: isPrimary ? Colors.white : Colors.black,
          ),
        ),
      ],
    ),
  );
}
