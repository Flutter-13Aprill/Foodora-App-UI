class CategoriesModel {
  final String svg;
  final String item;

  CategoriesModel({required this.svg, required this.item});
}

List<CategoriesModel> categoriesData = [
  CategoriesModel(svg: 'asset/icon/burgers.svg', item: 'Burgers'),
  CategoriesModel(svg: 'asset/icon/Pizza.svg', item: 'Chicken'),
  CategoriesModel(svg: 'asset/icon/chicken.svg', item: 'Pizza'),
  CategoriesModel(svg: 'asset/icon/chicken.svg', item: 'Pizza'),
  CategoriesModel(svg: 'asset/icon/chicken.svg', item: 'Pizza'),
];
