import 'package:flutter/material.dart';

// -- External Package
import 'package:google_fonts/google_fonts.dart';

class SearchBarWidget extends StatelessWidget {
  
  /// [SearchBarWidget] represents the search bar displayed on the Home screen.
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        cursorHeight: 12,
        decoration: InputDecoration(
          hintText: 'Search for a food item',
          hintStyle: GoogleFonts.poppins(
            fontSize: 12,
            color: Color(0xffBEBEBE),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Color(0xffEAEAF5), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Color(0xffEAEAF5), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Color(0xffEAEAF5), width: 2),
          ),
        ),
      ),
    );
  }
}
