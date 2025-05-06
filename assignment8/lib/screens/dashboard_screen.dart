import 'package:assignment8/widgets/cart_bottom_sheet.dart';
import 'package:assignment8/widgets/page_indicator.dart';
import 'package:assignment8/widgets/page_view_burgers.dart';
import 'package:assignment8/widgets/tab_bar_catagory.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
//here where the dashboard are it will shows catagories and highlighted burgers 
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //the pages that passed to page_view_burgers and page_indicator
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      initialIndex: 0,

      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset('assets/project_images/guy_image.png'),
            ),
          ],
          leading: Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: InkWell(
                  child: Image.asset('assets/project_icons/drawer_icon.png'),
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              );
            },
          ),
        ),

        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              //page title
              Container(
                width: 350,
                child: Text('Choose the', style: TextStyle(fontSize: 18)),
              ),
              Container(
                width: 350,
                child: Text(
                  'Food you love',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),


              //textfield searchbar
              Container(
                width: 310,
                padding: EdgeInsets.only(top: 5),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 234, 234, 245),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 234, 234, 245),
                        width: 1,
                      ),
                    ),
                    hintText: 'Search for a food item',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 168, 167, 167),
                    ),
                  ),
                ),
              ),

                //catagories text
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.centerLeft,
                width: 350,
                height: 18,
                child: Text(
                  'Catagories',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),

                  //here where the catagory widget is called
                TabBarCatagory(),

                //burger text
              Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.centerLeft,
                width: 350,
                height: 18,
                child: Text(
                  'Burgers',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              //passing the currentPage and change it's value to prepaer it to pass it for page_indicator
              PageViewBurgers(currentPage: currentPage,onSwap: (value)=> setState(() {
                currentPage = value;
              }) ,),
              
              SizedBox(height: 50),
              //here where the Pageindicator is called and passed the updated current value from PageViewBurgers
              PageIndicator(currentPage: currentPage),
              //here where the CartBottomSheet  is called

              CartBottomSheet(),


            ],
          ),
        ),
      ),
    );
  }
}
