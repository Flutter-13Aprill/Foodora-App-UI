class BurgersModel {
  final String image;
  final String type;
  final double rate;
  final String price;

  BurgersModel({
    required this.image,
    required this.type,
    required this.rate,
    required this.price,
  });
}

List<BurgersModel> burgerDetails = [
  BurgersModel(
    image: 'asset/image/Zinger.png',
    type: 'Zinger Burger',
    rate: 4.0,
    price: '\$12',
  ),
  BurgersModel(
    image: 'asset/image/hamburger.png',
    type: 'Chicken Burger',
    rate: 3.0,
    price: '\$15',
  ),
  BurgersModel(
    image: 'asset/image/hamburger.png',
    type: 'Chicken Burger',
    rate: 3.0,
    price: '\$15',
  ),
];
