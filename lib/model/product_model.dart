class Product {
  final String name;
  final int price;
  final String imagePath;
  final String id;

  Product({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.id,
  });
}

List<Product> productList = [
  Product(
    name: 'Dualshock 4® red',
    price: 99,
    imagePath: 'assets/images/product1.png',
    id: 'ps4_1',
  ),
  Product(
    name: 'Dualshock 4® midnight blue',
    price: 149,
    imagePath: 'assets/images/product2.png',
    id: 'ps4_2',
  ),
  Product(
    name: 'Dualshock 4® white',
    price: 199,
    imagePath: 'assets/images/product3.png',
    id: 'ps4_3',
  ),
  Product(
    name: 'Dualshock 4® black',
    price: 249,
    imagePath: 'assets/images/product4.png',
    id: 'ps4_4',
  ),
];

List<Product> ps5 = [
  Product(
      name: 'Dualshock 5® black',
      imagePath: 'assets/images/black_controller2.png',
      price: 99,
      id: 'ps5_1'),
  Product(
      name: 'Dualshock 5® white',
      imagePath: 'assets/images/white_controller.png',
      price: 80,
      id: 'ps5_2'),
  Product(
      name: 'Dualshock 5® custom red',
      imagePath: 'assets/images/f-standard-red_controller.png',
      price: 130,
      id: 'ps5_3'),
  Product(
      name: 'Dualshock 5® blue space',
      imagePath: 'assets/images/space_custom_controller.png',
      price: 120,
      id: 'ps5_4'),
];

List<Product> watches = [
  Product(
      name: 'Apple Watch Series 7®',
      imagePath: 'assets/images/p1.png',
      price: 399,
      id: 'watch_1'),
  Product(
      name: 'Apple Watch Series 6®',
      imagePath: 'assets/images/p2.png',
      price: 299,
      id: 'watch_2'),
  Product(
      name: 'Apple Watch SE®',
      imagePath: 'assets/images/p1.png',
      price: 279,
      id: 'watch_3'),
  Product(
      name: 'Apple Watch Series 3®',
      imagePath: 'assets/images/p2.png',
      price: 199,
      id: 'watch_4'),
];

List<Product> headset = [
  Product(
      name: 'Sony WH-1000XM4®',
      imagePath: 'assets/images/headphone.png',
      price: 348,
      id: 'headset_1'),
  Product(
      name: 'Bose QuietComfort 45®',
      imagePath: 'assets/images/Ear Headphone.png',
      price: 329,
      id: 'headset_2'),
  Product(
      name: 'Apple AirPods Max®',
      imagePath: 'assets/images/headphone.png',
      price: 549,
      id: 'headset_3'),
  Product(
      name: 'Sennheiser Momentum 3®',
      imagePath: 'assets/images/Ear Headphone.png',
      price: 399,
      id: 'headset_4'),
];
