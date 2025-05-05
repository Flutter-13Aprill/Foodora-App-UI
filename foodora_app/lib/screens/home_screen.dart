import 'package:flutter/material.dart';
import 'package:foodora_app/controllers/home_categories.dart';
import 'package:foodora_app/models/categories.dart';
import 'package:foodora_app/extensions/screens/get_size_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ControllerCategory controllerCategory = ControllerCategory();
  PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
    //Default category will be Burgers.
    controllerCategory.selectedCategory = 'Burgers';
    controllerCategory.categoryItemsCheck();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Drawer to show profile and info and contact
      drawer: Drawer(
        //ListView to display a list of draw list
        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Text(
                'foodora',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: const Text('About foodora'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: const Text('Contact'),
              onTap: () {},
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,

        actions: [
          // Profile Avatar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose the ', style: TextStyle(fontSize: 18)),
                  Text(
                    'Food you love',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(234, 234, 245, 1),
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    // SearchBar
                    child: SearchBar(
                      elevation: WidgetStateProperty.all(0.0),
                      backgroundColor: WidgetStateProperty.all(
                        Color.fromRGBO(255, 255, 255, 1),
                      ),
                      hintText: 'Search for a food item',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                // List of categories
                SizedBox(
                  height: context.getHeight() / 8,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder:
                        (context, index) => Padding(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () {
                              // Update the selectedCategory
                              controllerCategory.selectedCategory =
                                  categories[index].categoryName;
                              controllerCategory.categoryItemsCheck();
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(
                                context.getWidth(),
                                context.getHeight() / 18,
                              ),
                              backgroundColor: Colors.white,
                              shadowColor: controllerCategory
                                  .selectedCategoryColor(
                                    categories[index].categoryName,
                                  ),
                              foregroundColor: controllerCategory
                                  .selectedCategoryColor(
                                    categories[index].categoryName,
                                  ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  controllerCategory.selectedCategoryImage(
                                    categories[index],
                                  ),
                                  width: context.getWidth() / 5,
                                  height: context.getHeight() / 18,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  categories[index].categoryName.toUpperCase(),
                                ),
                              ],
                            ),
                          ),
                        ),
                  ),
                ),
                Text(
                  controllerCategory.selectedCategory ?? 'Burgers',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                // Page view for menu
                Expanded(
                  child: PageView.builder(
                    controller: PageController(
                      viewportFraction: 0.8,
                      initialPage: 0,
                    ),

                    itemCount: controllerCategory.categoryItems.length,
                    onPageChanged: (value) {
                      setState(() {
                        controllerCategory.itemNumber = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      final item = controllerCategory.categoryItems[index];
                      return Center(
                        child: Column(
                          children: [
                            SizedBox(
                              width: context.getWidth() + 60,
                              height: context.getHeight() / 3.3,
                              child: InkWell(
                                onTap: () {
                                  controllerCategory.selectedItemName =
                                      item.itemName;
                                  setState(() {});
                                  // Show dialog to add to cart
                                  showDialog<String>(
                                    context: context,
                                    builder:
                                        (BuildContext context) => AlertDialog(
                                          title: const Text('Add to cart'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                'Add',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                  );
                                },

                                child: Container(
                                  width: context.getWidth() + 60,
                                  height: context.getHeight() / 3.2,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomLeft,
                                      stops: [0.1, 0.9],
                                      colors: controllerCategory.selectedItem(
                                        item.itemName,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade400,
                                        spreadRadius: 5.0,
                                        blurRadius: 7,
                                        offset: Offset(3, 6),
                                      ),
                                    ],
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      spacing: 3,

                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          item.itemImage,
                                          width: context.getWidth(),
                                          height: context.getHeight() / 6,
                                          fit: BoxFit.contain,
                                        ),

                                        Text(
                                          item.itemName,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/Riyal.png',
                                              width: context.getWidth() / 12,
                                              height: context.getHeight() / 20,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              '${item.itemPrice}',
                                              style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // For page view indicator
                controllerCategory.dotIndicator(),
              ],
            ),
          ),
        ),
      ),
      // Bottom shopping bag
      floatingActionButton: Container(
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          elevation: 10,
          onPressed: () {},
          child: Icon(Icons.shopping_bag_rounded, color: Colors.white),
        ),
      ),
    );
  }
}
