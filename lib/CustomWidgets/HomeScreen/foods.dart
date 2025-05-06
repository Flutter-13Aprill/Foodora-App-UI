import 'package:flutter/material.dart';
import 'package:may3rd/CustomWidgets/HomeScreen/food_card.dart';
import 'package:may3rd/data/screen_size.dart';

class Foods extends StatefulWidget {
  const Foods({super.key});

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  final PageController _pageController = PageController(viewportFraction: 0.7);
  int _currentPage = 0;

  final List<Map<String, dynamic>> categoryData = [
    {
      'image': 'assets/images/zingerBurger.png',
      'title': 'Zinger Burger',
      'rating': 4.5,
      'price': 12.0,
    },
    {
      'image': 'assets/images/chickenBurger.png',
      'title': 'Chicken Burger',
      'rating': 3.0,
      'price': 15.0,
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      final page = _pageController.page?.round() ?? 0;
      if (page != _currentPage) {
        setState(() {
          _currentPage = page;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.screenHeight * 0.3,
          child: PageView.builder(
            clipBehavior: Clip.none,
            controller: _pageController,
            itemCount: categoryData.length,
            itemBuilder: (context, index) {
              final item = categoryData[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(34),
                  onTap:
                      () => _pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      ),
                  child: FoodCard(
                    imagePath: item['image'] as String,
                    title: item['title'] as String,
                    rating: item['rating'] as double,
                    price: item['price'] as double,
                    isSelected: _currentPage == index,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(categoryData.length, (index) {
            final isActive = index == _currentPage;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: isActive ? 12 : 8,
              height: isActive ? 12 : 8,
              decoration: BoxDecoration(
                color:
                    isActive
                        ? const Color.fromRGBO(255, 0, 54, 1)
                        : Colors.grey[400],
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ],
    );
  }
}
