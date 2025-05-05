//Class represents a single menu item with its details
class MenuItem {
  final String itemImage;
  final String itemName;
  final int itemPrice;
  final String itemCategory;

  // Constructor to initialize the item details
  const MenuItem({
    required this.itemImage,
    required this.itemName,
    required this.itemPrice,
    required this.itemCategory,
  });
}

// List of menu items
final List<MenuItem> itemList = [
  //[itemImage,itemName,itemPrice,itemCategory]
  MenuItem(
    itemImage: 'assets/images/burger.png',
    itemName: 'Zinger Burger ',
    itemPrice: 53,
    itemCategory: 'Burgers',
  ),
  MenuItem(
    itemImage: 'assets/images/checken_burger.png',
    itemName: 'Chicken Burger ',
    itemPrice: 53,
    itemCategory: 'Burgers',
  ),

  MenuItem(
    itemImage: 'assets/images/burger.png',
    itemName: 'Beef Burger',
    itemPrice: 64,
    itemCategory: 'Burgers',
  ),

  MenuItem(
    itemImage: 'assets/images/pepperoni_pizza.png',
    itemName: 'Pepperoni Pizza',
    itemPrice: 65,
    itemCategory: 'Pizza',
  ),

  MenuItem(
    itemImage: 'assets/images/margherita_pizza.png',
    itemName: 'Margarita Pizza',
    itemPrice: 49,
    itemCategory: 'Pizza',
  ),

  MenuItem(
    itemImage: 'assets/images/fried_chicken.png',
    itemName: 'Fried Chicken',
    itemPrice: 8,
    itemCategory: 'Chicken',
  ),
];
