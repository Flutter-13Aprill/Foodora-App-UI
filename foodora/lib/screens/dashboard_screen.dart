import 'package:flutter/material.dart';
import 'package:foodora/widgets/burgers_menu_widget.dart';
import 'package:foodora/widgets/categories_whdget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: ListTile(
          trailing: CircleAvatar(
            //CircleAvatar
            radius: 30,
            backgroundImage: AssetImage('images/person.png'),
          ),
        ),
      ),

      drawer: Drawer(), //Drawer
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Choose the ', style: TextStyle(fontSize: 20)),
            Text(
              'Food you love',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 40,
              child: SearchBar(
                //SearchBar
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                hintText: 'Search for a food item',
                elevation: WidgetStatePropertyAll(0),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Categories',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 500,
              height: 150,
              child: ListView(
                //the categories widgeti but here on the listview
                scrollDirection: Axis.horizontal,
                children: [CategoriesWhdget()],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Burger',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Expanded(child: BurgersMenuWidget()), //BurgersMenuWidget

            Align(
              // use button
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 30, bottom: 30),
                child: FloatingActionButton(
                  backgroundColor: Color.fromARGB(234, 213, 74, 74),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(color: Colors.white, width: 2),
                  ),

                  child: Image.asset('images/Union 1.png', color: Colors.white),
                  onPressed: () {
                    showDialog(
                      // when bresw there is AlertDialog
                      context: context,
                      builder:
                          (context) => AlertDialog(
                            title: Text('cart'),
                            content: Text('your cart is empty '),
                          ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
