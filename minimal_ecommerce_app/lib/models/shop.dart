import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "Product 1",
      price: 99.99,
      description:
          "Item description.. hsdhjsd wndbbxjh dxasbd jhhsshdwss jhdbhsdb sddasa",
      imagePath: "assets/sunglass.png",
    ),

    // product 2
    Product(
      name: "Product 2",
      price: 99.99,
      description: "Item description..",
      imagePath: "assets/hoodie.png",
    ),

    // product 3
    Product(
      name: "Product 3",
      price: 99.99,
      description: "Item description..",
      imagePath: "assets/watch.png",
    ),

    // product 4
    Product(
      name: "Product 4",
      price: 99.99,
      description: "Item description..",
      imagePath: "assets/shoe.png",
    ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get cart items
  List<Product> get cart => _cart;

  // add to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
