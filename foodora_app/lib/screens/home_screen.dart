import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int clickedIndex = 0;
  int selectedBurger = 0;
  int cartCounter = 0;
  final PageController pageController = PageController(viewportFraction: 0.6);
  // double currentPage = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   pageController.addListener(() {
  //     setState(() {
  //       currentPage = pageController.page!.round();
  //     });
  //   });
  // }

  List<String> menuCategory = ['Burger', "Pizza", "Chicken", "Drinks"];
  Map<String, String> listViewItem = {
    "Burger": "burger-icon",
    "Pizza": "pizza-icon",
    "Chicken": "chicken-icon",
    "Drinks": "drink-icon",
  };

  List<String> burger = ["Zinger Burger", "Chicken Burger"];
  Map<String, String> burgerListPage = {
    "Zinger Burger": "burger-image",
    "Chicken Burger": "chicken-burger-image",
  };

  Map<String, int> burgerRating = {"Zinger Burger": 4, "Chicken Burger": 3};

  Map<String, double> burgerPrice = {"Zinger Burger": 12, "Chicken Burger": 15};
  @override
  Widget build(BuildContext context) {
    String? passedData;

    if (ModalRoute.of(context)?.settings.arguments != null) {
      passedData = ModalRoute.of(context)?.settings.arguments as String;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                // color: Color(0xFFFF0036),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xffFF0036), Color(0x80FF0036)],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome ${passedData ?? "Back"}",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.receipt_long, color: Colors.black),
              title: Text("Previous Orders"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text("Settings"),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder:
                        (context) => IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(Icons.menu, size: 40),
                        ),
                  ),

                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffEAEAF5),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Image.asset("assets/images/profile-image.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Choose the", style: TextStyle(fontSize: 22)),
                      Text(
                        "Food you love",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 350,
                child: SearchBar(
                  elevation: WidgetStatePropertyAll(0),
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  hintText: "Search for a food item",
                  hintStyle: WidgetStatePropertyAll(
                    TextStyle(color: Color(0xffBEBEBE)),
                  ),

                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffEAEAF5)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 550,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            bool isClicked = index == clickedIndex;

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  clickedIndex = index;
                                });
                              },

                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 3,
                                  right: 10,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          isClicked
                                              ? Color(0xffFF0036)
                                              : Color(0xffEAEAF5),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            isClicked
                                                ? Color(0x80FF0036)
                                                : Color(0xffEAEAF5),
                                        offset: Offset(0, 6),
                                        blurRadius: 4,
                                        spreadRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 20,
                                      right: 20,
                                      bottom: 4,
                                    ),
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/${listViewItem[menuCategory[index]]}.svg",
                                          width: 30,
                                          height: 30,
                                          colorFilter: ColorFilter.mode(
                                            isClicked
                                                ? Color(0x80FF0036)
                                                : Color(0xffEAEAF5),
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                        Text("${menuCategory[index]}"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      SizedBox(height: 60),
                      Text(
                        "Burgers",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Container(
                        height: 275,
                        child: PageView.builder(
                          padEnds: false,
                          controller: pageController,
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            bool isClicked = index == selectedBurger;

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedBurger = index;
                                });
                              },

                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 3,
                                  right: 10,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                  height: isClicked ? 275 : 250,
                                  width: isClicked ? 210 : 190,
                                  decoration: BoxDecoration(
                                    color: isClicked ? null : Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                    gradient:
                                        isClicked
                                            ? LinearGradient(
                                              begin: Alignment.centerRight,
                                              end: Alignment.centerLeft,
                                              colors: [
                                                Color(0xffFF6787),
                                                Color(0xffFF0036),
                                              ],
                                            )
                                            : null,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            isClicked
                                                ? Color(0x80FF0036)
                                                : Color(0xffEAEAF5),
                                        offset: Offset(0, 4),
                                        blurRadius: 5,
                                        spreadRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 20,
                                      right: 20,
                                      bottom: 4,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            "assets/images/${burgerListPage[burger[index]]}.png",
                                            width: 120,
                                            height: 120,
                                          ),
                                        ),
                                        Text(
                                          "${burger[index]}",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                isClicked
                                                    ? Colors.white
                                                    : Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: List.generate(5, (counter) {
                                            int rating =
                                                burgerRating[burger[index]] ??
                                                0;
                                            return Icon(
                                              counter < rating
                                                  ? Icons.star
                                                  : Icons.star_border,
                                              color: Colors.amberAccent,
                                              size: 22,
                                            );
                                          }),
                                        ),

                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "\$${burgerPrice[burger[index]]}",
                                              style: TextStyle(
                                                fontSize: 28,
                                                color:
                                                    isClicked
                                                        ? Colors.white
                                                        : Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (context) => AlertDialog(
                                                        title: Text(
                                                          "Add to Cart",
                                                        ),

                                                        content: Text(
                                                          "Are you sure you want to add this item to your cart?",
                                                        ),

                                                        actions: [
                                                          TextButton(
                                                            onPressed:
                                                                () =>
                                                                    Navigator.pop(
                                                                      context,
                                                                    ),
                                                            child: Text("No"),
                                                          ),
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              cartCounter++;
                                                              Navigator.pop(
                                                                context,
                                                              );
                                                              setState(() {});
                                                            },
                                                            style: ElevatedButton.styleFrom(
                                                              backgroundColor:
                                                                  Color(
                                                                    0xffFF0036,
                                                                  ),
                                                            ),
                                                            child: Text("Yes"),
                                                          ),
                                                        ],
                                                      ),
                                                );
                                              },
                                              child: Icon(
                                                Icons.add_shopping_cart,
                                                color:
                                                    isClicked
                                                        ? Colors.white
                                                        : Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            5,
                            (index) => Container(
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              width: index == 0 ? 12 : 8,
                              height: index == 0 ? 12 : 8,
                              decoration: BoxDecoration(
                                color:
                                    index == 0
                                        ? Color(0xffFF0036)
                                        : Colors.grey[300],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x80FF0036),
                            offset: Offset(0, 4),

                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFF0036),
                      ),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                    if (cartCounter > 0)
                      Positioned(
                        top: 4,
                        left: 4,

                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Text(
                                "$cartCounter",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
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
