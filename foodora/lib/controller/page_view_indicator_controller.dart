import 'package:flutter/material.dart';

class PageViewIndicatorController extends StatelessWidget {
  const PageViewIndicatorController({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            2,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: AnimatedContainer(
                    curve: Curves.easeIn,
                    duration: const Duration(microseconds: 300),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        color: index == currentPage
                            ? const Color.fromARGB(255, 255, 0, 54)
                            : const Color.fromARGB(225, 228, 228, 241),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )));
  }
}
