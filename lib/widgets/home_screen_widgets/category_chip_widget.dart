import 'package:flutter/material.dart';


// -- External packages
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';


class CategoryChipWidget extends StatelessWidget {

/// [CategoryChipWidget] represents a category chip used to display food categories.
///
/// It takes four parameters:
///
/// [nameCategory] – The name of the category.
///
/// [pathImageCategory] – The path to the category image in the assets folder.
///
/// [currentCategoryIndex] – The index of the currently selected category chip.
///
/// [categoryIndex] – The index of this specific chip in the list of category chips.
  const CategoryChipWidget({super.key, required this.nameCategory, required this.pathImageCategory, required this.currentCategoryIndex, required this.categoryIndex });
  final String nameCategory;
  final String pathImageCategory;
  final int currentCategoryIndex;
  final int categoryIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 4,
      children: [
        SvgPicture.asset(
          pathImageCategory, 
          width: 40, 
          height: 40, 
          color:  currentCategoryIndex == categoryIndex ? Color(0xffFF0036) : Color(0xffA8A7A7),
          ),
        Text(nameCategory, style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),)
      ],
    );
  }
}