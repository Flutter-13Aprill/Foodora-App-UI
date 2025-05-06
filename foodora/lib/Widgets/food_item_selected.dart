import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodItemSelected extends StatefulWidget {
  FoodItemSelected(
      {super.key,
      required this.foodName,
      required this.foodImage,
      required this.foodRating,
      required this.foodPrice,
      required this.foodSelected});
  final String foodName;
  final String foodImage;
  final String foodRating;
  final String foodPrice;
  bool foodSelected;

  @override
  State<FoodItemSelected> createState() => _FoodItemSelectedState();
}

class _FoodItemSelectedState extends State<FoodItemSelected> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.foodSelected = !widget.foodSelected;
        setState(() {});
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            gradient: widget.foodSelected == true
                ? const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                        Color.fromARGB(255, 255, 0, 54),
                        Color.fromARGB(246, 254, 120, 149)
                      ])
                : const LinearGradient(
                    colors: [Colors.white, Colors.white],
                  ),
            boxShadow: [
              widget.foodSelected == true
                  ? const BoxShadow(
                      blurRadius: 7.5, color: Color.fromARGB(64, 255, 0, 54), offset: Offset(0,8))
                  : const BoxShadow(
                      blurRadius: 7.5, color: Color.fromARGB(76, 205, 204, 241), offset: Offset(0,8))
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.foodImage,
                scale: 0.7,
              ),
              Text(
                widget.foodName,
                style: widget.foodSelected == true
                    ? GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)
                    : GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 8,
                        fontWeight: FontWeight.bold),
              ),
              Image.asset(
                widget.foodRating,
                scale: 0.7,
              ),
              Text("\$15",
                  style: widget.foodSelected == true
                      ? GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)
                      : GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
