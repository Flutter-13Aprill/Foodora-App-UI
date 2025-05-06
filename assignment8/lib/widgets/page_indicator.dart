import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.currentPage});
  final int currentPage;
  //here the PageIndicator is defiend it will take it's currentPage from dashboard passed value by page_view_burger 
  @override
  Widget build(BuildContext context) {
    return Row(
      // in this row it will be add 2 dots and be handled currentValue will tell the widget in which page the user in
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        2,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(microseconds: 500),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color:
                  index == currentPage
                      ? Color.fromARGB(255, 255, 0, 54)
                      : Color.fromARGB(225, 228, 228, 241),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
