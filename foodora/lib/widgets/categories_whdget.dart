import 'package:flutter/material.dart';

class CategoriesWhdget extends StatefulWidget {
  const CategoriesWhdget({super.key});

  @override
  State<CategoriesWhdget> createState() => _CategoriesWhdgetState();
}

class _CategoriesWhdgetState extends State<CategoriesWhdget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // here just build each category and use it in listview in horsinal way on the screen
      children: [
        InkWell(
          onTap: () {},
          child: Stack(
            children: [
              Container(
                alignment: Alignment.lerp(
                  Alignment.center,
                  Alignment.topCenter,
                  0.4,
                ),
                height: 66,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 3,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Image.asset('images/burger.png'),
              ),

              Positioned(
                bottom: 2,
                right: 25,
                child: Text('Burgers', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ),
        SizedBox(width: 30),
        InkWell(
          onTap: () {},
          child: Stack(
            children: [
              Container(
                alignment: Alignment.lerp(
                  Alignment.center,
                  Alignment.topCenter,
                  0.4,
                ),
                height: 66,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 3,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Image.asset('images/pizza.png'),
              ),

              Positioned(
                bottom: 2,
                right: 35,
                child: Text(
                  'Pizza',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 67, 60, 63),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 30),
        InkWell(
          onTap: () {},
          child: Stack(
            children: [
              Container(
                alignment: Alignment.lerp(
                  Alignment.center,
                  Alignment.topCenter,
                  0.4,
                ),
                height: 66,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 3,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Image.asset('images/chicken.png'),
              ),

              Positioned(
                bottom: 2,
                right: 28,
                child: Text(
                  'chicken',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 67, 60, 63),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 30),
        InkWell(
          onTap: () {},
          child: Stack(
            children: [
              Container(
                alignment: Alignment.lerp(
                  Alignment.center,
                  Alignment.topCenter,
                  0.4,
                ),
                height: 66,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 3,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Image.asset('images/pizza.png'),
              ),

              Positioned(
                bottom: 2,
                right: 35,
                child: Text(
                  'Pizza',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 67, 60, 63),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
