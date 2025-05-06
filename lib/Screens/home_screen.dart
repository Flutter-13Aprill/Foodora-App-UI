import 'package:flutter/material.dart';
import 'package:may3rd/CustomWidgets/HomeScreen/categories.dart';
import 'package:may3rd/data/screen_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(255, 0, 54, 0.3),

                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(0, 10),
              ),
            ],
          ),
          height: 60,
          width: 60,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color.fromRGBO(255, 0, 54, 1),
            shape: CircleBorder(
              side: BorderSide(color: Colors.white, width: 3),
            ),
            child: Image.asset(
              "assets/images/bag.png",
              fit: BoxFit.cover,
              height: context.screenHeight * 0.03,
              width: context.screenWidth * 0.05,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 50,
            width: 50,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pfp.png'),
            ),
          ),
        ),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 18, color: Colors.black),
                children: [
                  TextSpan(text: 'Choose the'),
                  TextSpan(
                    text: '\nFood you love',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: context.screenHeight * 0.05,
              ),
              child: TextField(
                decoration: InputDecoration(
                  enabled: false,
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(234, 234, 245, 1),
                      width: 1,
                    ),
                  ),
                  hintText: 'Search for a food item',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(190, 190, 190, 1),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Text(
              "Categories",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Categories(),
            SizedBox(height: context.screenHeight * 0.02),
            Text(
              "Burgers",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
