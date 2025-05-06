
class CategoryModel {
  final String title;
  final String imagePath;
  bool selected=false;

  CategoryModel({
    required this.title,
    required this.imagePath,
    required this.selected,
  });
}

// sample data
List<CategoryModel> categories = [
  CategoryModel(
    title: "Burgers",
    imagePath: "assets/images/burger.png",
    // color: Color.fromRGBO(255, 0, 54, 0.24), 
    selected: true,
  ),
  CategoryModel(
    title: "chicken",
    imagePath: "assets/images/piz.png",
    // color: Color.fromRGBO(234, 234, 245, 1),
     selected: false,
  ),
  CategoryModel(
    title: "Pizza",
    imagePath: "assets/images/chicken.png",
    // color: Color.fromRGBO(234, 234, 245, 1),
     selected: false,
  ),
];
