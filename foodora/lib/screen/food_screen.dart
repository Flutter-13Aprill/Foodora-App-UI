import 'package:flutter/material.dart';
import 'package:foodora/custom_navbar/categories_navbar.dart';
import 'package:foodora/custom_page_view/pageview.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/pic.png", fit: BoxFit.cover),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 10, 10, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose the",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Text(
              "Food you love",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 30, width: 30),
            SizedBox(
              height: 36,
              width: 310,
              child: SearchBar(
                hintText: "Search for a food item",
                hintStyle: WidgetStateProperty.all(
                  TextStyle(color: Color.fromRGBO(190, 190, 190, 1)),
                ),
                backgroundColor: WidgetStateProperty.all(Colors.white),
                side: WidgetStateProperty.all(
                  BorderSide(color: Color.fromRGBO(234, 234, 245, 1), width: 2),
                ),
                shadowColor: WidgetStateProperty.all(Colors.transparent),
              ),
            ),
            SizedBox(height: 30, width: 30),
            Text("Categories"),
            Flexible(child: CategoriesNavBar()),
            Text("data"),
            Flexible(child: CustomPageView()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            backgroundColor: Colors.white,
            builder: (context) {
              return SizedBox(
                height: 300,
                child: Center(
                  child: Text(
                    'Cart Summary / Item Details',
                    style: TextStyle(fontSize: 18, color: Colors.amber),
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }
}
