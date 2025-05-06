import 'package:flutter/material.dart';

class PageIndicatorWidget extends StatelessWidget {

  /// [PageIndicatorWidget] displays the three dots below the PageView to indicate the current page.
  const PageIndicatorWidget({super.key, required this.currentPage});
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
          width: 7,
          height: 7,
          decoration: BoxDecoration(
            color: index == currentPage ? Color(0xffFF0036) : Color(0xffE4E4F1),
            borderRadius: BorderRadius.circular(5)
          ),
        ),
      ) )
    );
  }
}