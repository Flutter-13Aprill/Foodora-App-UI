import 'package:flutter/material.dart';
import 'package:foodora/Widgets/food_category.dart';
import 'package:foodora/Widgets/food_item_selected.dart';
import 'package:foodora/controller/page_view_indicator_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int tabBarIndex = 0;
  int currentPageViewIndex = 0;
  PageController pageController = PageController(viewportFraction: 0.5);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size(MediaQuery.sizeOf(context).width, 50),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Container(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Choose the",
                            style: GoogleFonts.poppins(fontSize: 18))),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Food you love",
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Image.asset("assests/icons/Mask group.png"),
            )
          ],
        ),
        drawer: const Drawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 32),
              SizedBox(
                width: 310,
                height: 36,
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search for a food item",
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 168, 167, 167),
                            fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(255, 234, 234, 245))))),
              ),
              const SizedBox(height: 36),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categories",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              TabBar(
                  tabAlignment: TabAlignment.start,
                  onTap: (value) {
                    setState(() {
                      tabBarIndex = value;
                    });
                  },
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 255, 0, 54))),
                  dividerColor: Colors.white,
                  isScrollable: true,
                  tabs: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: FoodCategory(
                        foodCategoryName: "Burgers",
                        foodCategoryImage: "assests/icons/Burger.png",
                        foodCategoryIndex: 0,
                        currentCategoryIndex: tabBarIndex,
                      ),
                    ),
                    FoodCategory(
                      foodCategoryName: "Pizza",
                      foodCategoryImage: "assests/icons/Pizza.png",
                      foodCategoryIndex: 1,
                      currentCategoryIndex: tabBarIndex,
                    ),
                    FoodCategory(
                      foodCategoryName: "Chicken",
                      foodCategoryImage: "assests/icons/Chicken.png",
                      foodCategoryIndex: 2,
                      currentCategoryIndex: tabBarIndex,
                    ),
                  ]),
              const SizedBox(
                height: 72,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Burgers",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 211,
                  child: PageView(
                    padEnds: false,
                    controller: pageController,
                    onPageChanged: (value) {
                      setState(() {
                        currentPageViewIndex = value;
                      });
                    },
                    children: [
                      FoodItemSelected(
                        foodName: "Zinger Burger",
                        foodImage: "assests/images/beef_burger.png",
                        foodRating: "assests/images/4_stars.png",
                        foodPrice: "12",
                        foodSelected: true,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (builder) => AlertDialog(
                                    title: const Text(
                                        "Are you sure you want to order?"),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context, "No");
                                          },
                                          child: const Text("No")),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context, "Yes");
                                          },
                                          child: const Text("Yes"))
                                    ],
                                  ));
                        },
                        child: FoodItemSelected(
                          foodName: "Chicken Burger",
                          foodImage: "assests/images/Chicken Burger.png",
                          foodRating: "assests/images/3_stars.png",
                          foodPrice: "15",
                          foodSelected: false,
                        ),
                      ),
                      const SizedBox()
                    ],
                  )),
              const SizedBox(height: 16),
              PageViewIndicatorController(
                currentPage: currentPageViewIndex,
              ),
              const SizedBox(
                height: 80,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 0, 54),
                        shape: BoxShape.circle,
                        boxShadow:const [ BoxShadow(blurRadius: 5, color: Color.fromARGB(61, 255, 0, 54), offset: Offset(0,10))],
                        border: Border.all(width: 3, color: Colors.white)),
                    child: IconButton(
                      icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (builder) => AlertDialog(
                                  title: const Text(
                                      "Are you sure you want to order?"),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, "No");
                                        },
                                        child: const Text("No")),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, "Yes");
                                        },
                                        child: const Text("Yes"))
                                  ],
                                ));
                      },
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
