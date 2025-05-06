import 'package:flutter/material.dart';

class BurgersMenuWidget extends StatefulWidget {
  const BurgersMenuWidget({super.key});

  @override
  State<BurgersMenuWidget> createState() => _BurgersMenuWidgetState();
}

class _BurgersMenuWidgetState extends State<BurgersMenuWidget> {
  final PageController _controller = PageController(
    viewportFraction: 0.6,
  ); //controller for know my position on the page
  int _currentPage = 0;

  final List<Map<String, dynamic>> items = [
    {
      'title': 'Zinger Burger',
      'price': '\$12',
      'image': 'images/Zinger Burger.png',
      'stars': 'images/Zinger Burger Star.png',
      'gradient': false,
      'textColor': Colors.black,
    },
    {
      'title': 'Chicken Burger',
      'price': '\$15',
      'image': 'images/Checken Burger.png',
      'stars': 'images/Checken Burger stars.png',
      'gradient': false,
      'textColor': Colors.black,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 280,
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (index) { // to change my position and rebild the screeen 
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: items.length,//based on the list two pages 
            itemBuilder: (context, index) {
              final item = items[index];
              return GestureDetector(//the container child is GestureDetector
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder:
                        (context) => Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(item['title']),
                              SizedBox(height: 10),
                              Text('Price: ${item['price']}'),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          ),
                        ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 180,
                  decoration: BoxDecoration(
                    gradient:
                        index == _currentPage
                            ? LinearGradient(
                              colors: [
                                Color(0xffff5f6D),
                                Color.fromARGB(255, 213, 74, 74),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                            : null,
                    color: index == _currentPage ? null : Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 30,
                        left: 15,
                        right: 15,
                        child: Image.asset(item['image'], height: 100),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 15,
                        right: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['title'],
                              style: TextStyle(
                                color:
                                    index == _currentPage
                                        ? Colors.white
                                        : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5),
                            Image.asset(item['stars']),
                            SizedBox(height: 5),
                            Text(
                              item['price'],
                              style: TextStyle(
                                color:
                                    index == _currentPage
                                        ? Colors.white
                                        : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Row(
          //indector
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color:
                    _currentPage == index ? Colors.red : Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
