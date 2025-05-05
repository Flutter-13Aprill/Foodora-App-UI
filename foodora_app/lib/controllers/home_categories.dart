import 'package:flutter/material.dart';
import 'package:foodora_app/models/categories.dart';
import 'package:foodora_app/models/menu_item.dart';

class ControllerCategory {
  List<MenuItem> categoryItems = [];
  String? selectedCategory;
  String? selectedItemName;
  int itemNumber = 0;
  // To match the menu and the category of the item to display it
  void categoryItemsCheck() {
    categoryItems.clear();
    for (var item in itemList) {
      if (item.itemCategory == selectedCategory || selectedCategory == 'ALL') {
        categoryItems.add(item);
      }
    }
  }

  // If the category is selected the color will be red
  Color selectedCategoryColor(String category) {
    return selectedCategory == category ? Colors.red : Colors.grey;
  }

  // If the category is selected the image will be red
  String selectedCategoryImage(Category category) {
    return selectedCategory == category.categoryName
        ? category.selectedImage
        : category.unselectedImage;
  }

  // If the item is selected the background will have a red gradient
  List<Color> selectedItem(String itemName) {
    return selectedItemName == itemName
        ? [Color.fromRGBO(255, 0, 54, 1), Color.fromRGBO(255, 0, 54, 0.5)]
        : [Colors.white, Colors.white];
  }

  // Dot indicator for page view
  dotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < categoryItems.length; i++)
          Container(
            margin: EdgeInsets.all(5),
            width: i == itemNumber ? 16 : 6,
            height: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: i == itemNumber ? Colors.red : Colors.grey,
            ),
          ),
      ],
    );
  }
}
