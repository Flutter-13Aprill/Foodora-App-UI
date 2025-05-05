//Class represents a category
class Category {
  String categoryName;
  String selectedImage;
  String unselectedImage;
  // Constructor to initialize the item category
  Category({
    required this.categoryName,
    required this.selectedImage,
    required this.unselectedImage,
  });
}

// List of  category
final List<Category> categories = [
  Category(
    categoryName: 'Burgers',
    selectedImage: 'assets/images/selected_burger.png',
    unselectedImage: 'assets/images/unselected_burger.png',
  ),
  Category(
    categoryName: 'Pizza',
    selectedImage: 'assets/images/selected_ pizza.png',
    unselectedImage: 'assets/images/unselected_pizza.png',
  ),
  Category(
    categoryName: 'Chicken',
    selectedImage: 'assets/images/selected_chicken.png',
    unselectedImage: 'assets/images/unselected_chicken.png',
  ),
];
