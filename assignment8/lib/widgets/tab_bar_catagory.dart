import 'package:flutter/material.dart';

class TabBarCatagory extends StatefulWidget {
  const TabBarCatagory({super.key});

  //here is the tabbar for catagories

  @override
  State<TabBarCatagory> createState() => _TabBarCatagoryState();
}

class _TabBarCatagoryState extends State<TabBarCatagory> {
  //so I can know in which page im I
  int currentCatagory = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 25),
      width: 350,
      height: 85,
      //here where the tabbar is defiend and styled
      child: TabBar(
        indicatorColor: Colors.transparent,
        dividerColor: Colors.transparent,
        tabAlignment: TabAlignment.start,
        onTap:
            (value) => setState(() {
              currentCatagory = value;
            }),
        unselectedLabelColor: Color.fromARGB(255, 168, 167, 167),
        labelColor: Color.fromARGB(255, 255, 0, 54),
        isScrollable: true,
        tabs: [
          //burger tab
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                if (currentCatagory == 0)
                  BoxShadow(
                    color: const Color.fromARGB(
                      255,
                      158,
                      76,
                      76,
                    ).withValues(alpha: 0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 3), 
                  ),
              ],
              borderRadius: BorderRadius.circular(23),
              border: Border.all(
                width: 1,
                color:
                    currentCatagory == 0
                        ? Color.fromARGB(255, 255, 0, 54)
                        : Color.fromARGB(255, 168, 168, 167),
              ),
            ),

            width: 110,
            height: 80,
            child: Tab(
              text: 'burger',
              icon: Image.asset(
                'assets/project_icons/burger_icon.png',
                color:
                    currentCatagory == 0
                        ? Color.fromARGB(255, 255, 0, 54)
                        : Color.fromARGB(255, 168, 168, 167),
              ),
            ),
          ),
          //pizza tab
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                if (currentCatagory == 1)
                  BoxShadow(
                    color: const Color.fromARGB(
                      255,
                      158,
                      76,
                      76,
                    ).withValues(alpha: 0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 3), 
                  ),
              ],
              borderRadius: BorderRadius.circular(23),
              border: Border.all(
                width: 1,
                color:
                    currentCatagory == 1
                        ? Color.fromARGB(255, 255, 0, 54)
                        : Color.fromARGB(255, 168, 168, 167),
              ),
            ),

            width: 110,
            height: 80,
            child: Tab(
              text: 'Pizza',
              icon: Image.asset(
                'assets/project_icons/pizza_icon.png',
                color:
                    currentCatagory == 1
                        ? Color.fromARGB(255, 255, 0, 54)
                        : Color.fromARGB(255, 168, 168, 167),
              ),
            ),
          ),
          //chicken tab
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                if (currentCatagory == 2)
                  BoxShadow(
                    color: const Color.fromARGB(
                      255,
                      158,
                      76,
                      76,
                    ).withValues(alpha: 0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 3),
                  ),
              ],
              borderRadius: BorderRadius.circular(23),
              border: Border.all(
                width: 1,
                color:
                    currentCatagory == 2
                        ? Color.fromARGB(255, 255, 0, 54)
                        : Color.fromARGB(255, 168, 168, 167),
              ),
            ),

            width: 110,
            height: 80,
            child: Tab(
              text: 'Chicken',
              icon: Image.asset(
                'assets/project_icons/chicken_icon.png',
                color:
                //here to check the color of the box if it's selected
                    currentCatagory == 2
                        ? Color.fromARGB(255, 255, 0, 54)
                        : Color.fromARGB(255, 168, 168, 167),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
