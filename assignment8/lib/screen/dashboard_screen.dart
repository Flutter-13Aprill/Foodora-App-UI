import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 270),
            child: Image.asset("assets/images/image14.png"),
          ),

          toolbarHeight: 60, //to resizr the app bar
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 8),
          child: ListView(
            padding: const EdgeInsets.all(10), //to offset from the app bar

            children: [
              Text("Choose the", style: TextStyle(fontSize: 18)),
              Text(
                "Food you love",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              //----------------------
              SizedBox(height: 20),
              Container(
                height: 36,
                width: 10,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 234, 234, 245),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),

                child: SearchBar(
                  backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 255, 254, 254),
                  ),
                  shadowColor: WidgetStateProperty.all(
                    const Color.fromARGB(0, 252, 252, 252),
                  ),

                  hintText: "Search for a food item",
                ),
              ),

              SizedBox(height: 40),

              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "  Categories ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              //---------------------------------------------------------------
              TabBar(
                dividerHeight: 0,
                unselectedLabelColor: const Color.fromARGB(255, 145, 142, 142),

                labelStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color.fromARGB(255, 255, 0, 54),
                ),
                indicator: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 255, 0, 54)),

                  borderRadius: BorderRadius.circular(23),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 255, 0, 54),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),

                tabs: [
                  Stack(
                    children: [
                      Container(
                        height: 70,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Image.asset("assets/images/image7.png"),
                            Text("Burger"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 70,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Image.asset("assets/images/image10.png"),
                            Text("Pizza"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 70,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Image.asset("assets/images/image11.png"),
                            Text("chicken"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Burgers",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 175),
                child: Container(
                  width: 40,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(0, 240, 215, 220)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 211, 34, 70),
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                        blurRadius: 7,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(34),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        // Color.fromARGB(255, 255, 0, 54),
                        Color.fromARGB(255, 255, 0, 54),
                        Color.fromARGB(128, 255, 103, 134),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 12.0),
                            child: Image.asset("assets/images/image8.png"),
                          ),
                          Text(
                            "Zinger Burger",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 44.0),
                            child: Image.asset("assets/images/image9.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 56.0),
                            child: Text(
                              "\$12",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              SizedBox(
                height: 120,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 255, 103, 135),
                        Color.fromARGB(255, 255, 0, 54),
                      ],
                    ),
                  ),

                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              ListTile(title: Text("My Profile"), onTap: () {}),
              ListTile(title: Text("Invoices"), onTap: () {}),
              ListTile(title: Text("Settings"), onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
