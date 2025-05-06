import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.7);
  int _currentPage = 0;
  String selectedCategory = 'Burgers';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFFF0036)),
              child: Text(
                ' Foodora Menu',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(leading: Icon(Icons.person), title: Text('Profile')),
            ListTile(leading: Icon(Icons.shopping_cart), title: Text('Orders')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          icon: const Icon(Icons.menu, size: 28),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                      ),
                      ClipOval(
                        child: Image.asset(
                          'assets/Images/user_profile.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text("Choose the",
                      style: TextStyle(fontSize: 20, color: Colors.black87)),
                  const Text(
                    "Food you love",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search for a food item",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text("Categories",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _categoryItem('burger_icon.png', 'Burgers'),
                      _categoryItem('pizza_icon.png', 'Pizza'),
                      _categoryItem('chicken_icon.png', 'Chicken'),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(selectedCategory,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 211,
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() => _currentPage = index);
                      },
                      children: [
                        _burgerCard(
                            'zinger_burger.png', 'Zinger Burger', '\$12', 4),
                        _burgerCard(
                            'chicken_burger.png', 'Chicken Burger', '\$15', 3),
                        _burgerCard(
                            'cheese_burger.png', 'Cheese Burger', '\$11', 5),
                        _burgerCard(
                            'veg_burger.png', 'Veggie Burger', '\$9', 2),
                        _burgerCard(
                            'double_burger.png', 'Double Burger', '\$14', 4),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // ✅ Buttons: Add to Cart & View Details
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: const Text("Cart"),
                              content: const Text("Item added to cart."),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text("OK"),
                                ),
                              ],
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF0036),
                        ),
                        child: const Text('Add to Cart',
                            style: TextStyle(color: Colors.white)),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                              ),
                              builder: (_) => Container(
                                padding: const EdgeInsets.all(20),
                                height: 200,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Item Details",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 10),
                                    Text(
                                        "This item is freshly prepared and delicious."),
                                  ],
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white70,
                          ),
                          child: const Text(
                            'View Details',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),

                  const SizedBox(height: 100),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == index
                                ? Colors.red
                                : Colors.grey[300],
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF0036),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(255, 0, 54, 0.24),
                      blurRadius: 6,
                      offset: Offset(7, 10),
                    )
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    'assets/Images/bag_icon.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryItem(String icon, String label) {
    final isSelected = selectedCategory == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = label;
        });
      },
      child: Container(
        width: 90,
        height: 70,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.white70,
          borderRadius: BorderRadius.circular(20),
          border: isSelected
              ? Border.all(color: const Color(0xFFFF0036), width: 2)
              : null,
          boxShadow: isSelected
              ? [const BoxShadow(color: Colors.black12, blurRadius: 4)]
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Images/$icon', width: 28),
            const SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.red : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _burgerCard(String image, String name, String price, int rating) {
    final isZinger = image.contains('zinger');
    return Container(
      width: 200,
      height: 211,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isZinger ? const Color(0xFFFF4C60) : Colors.white,
        borderRadius: BorderRadius.circular(34),
        boxShadow: const [
          BoxShadow(
              color: Colors.black12, blurRadius: 15, offset: Offset(8, 8)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/Images/$image', height: 80),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isZinger ? Colors.white : Colors.black,
            ),
          ),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                size: 14,
                color: index < rating
                    ? Colors.yellow
                    : isZinger
                        ? Colors.white24
                        : Colors.grey[300],
              ),
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              color: isZinger ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
