import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String type;
  final String image;
  final String sters;
  final String price;

  const MyWidget({
    super.key,
    required this.type,
    required this.image,

    required this.sters,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 211,
      width: 173,
      decoration: BoxDecoration(color: const Color.fromARGB(255, 177, 81, 173)),
      child: Column(
        children: [
          Image.asset(image),
          Text(
            type,
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 180, 169, 137),
            ),
          ),
          Image.asset(sters),
          Text(
            price,
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 180, 169, 137),
            ),
          ),
        ],
      ),
    );
  }
}
