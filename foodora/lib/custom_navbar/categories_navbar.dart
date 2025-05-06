import 'package:flutter/material.dart';

class CategoriesNavBar extends StatefulWidget {
  const CategoriesNavBar({super.key});

  @override
  State<CategoriesNavBar> createState() => _CategoriesNavBarState();
}

class _CategoriesNavBarState extends State<CategoriesNavBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SizedBox(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                dividerHeight: 0,
                indicatorColor: Colors.white,
                tabs: [
                  Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(234, 234, 245, 1),
                        width: 1,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Tab(
                      icon: Image.asset("assets/images/Burger.png"),
                      text: "Burgers",
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(234, 234, 245, 1),
                        width: 1,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Tab(
                      icon: Image.asset("assets/images/Pizza.png"),
                      text: "Pizza",
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(234, 234, 245, 1),
                        width: 1,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Tab(
                      icon: Image.asset("assets/images/chicken.png"),
                      text: "chicken",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
