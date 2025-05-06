import 'package:flutter/material.dart';
import 'package:foodora/widget/custom_container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  PageController controller = PageController(viewportFraction: 0.6);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: MyWidget(
                      type: 'Zinger Burger',
                      image: "assets/images/Checken Burger.png",
                      sters: "assets/images/stars.png",
                      price: "12",
                    ),
                  ),
                  MyWidget(
                    type: 'Zinger Burger',
                    image: "assets/images/Checken Burger.png",
                    sters: "assets/images/stars.png",
                    price: "12",
                  ),
                  MyWidget(
                    type: 'Zinger Burger',
                    image: "assets/images/Checken Burger.png",
                    sters: "assets/images/stars.png",
                    price: "12",
                  ),
                ],
              ),
              SmoothPageIndicator(controller: controller, count: 3),
            ],
          ),
        ),
      ],
    );
  }
}
