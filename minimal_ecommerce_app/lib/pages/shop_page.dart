// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/components/my_drawer.dart';
import 'package:minimal_ecommerce_app/components/my_product_tile.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,

        // go to cart button
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, "/cart_page"),
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: const MyDrawer(),
      body: ListView(
        children: [
          SizedBox(height: 10),

          // title
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: const Text(
              "Shop",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 10),

          // subtitle
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Pick from a selected list of premium products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          // product list
          SizedBox(
            height: 500,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),
              itemCount: products.length,
              itemBuilder: (context, index) {
                // get each individual product from shop
                final product = products[index];

                // return as a product tile UI
                return MyProductTile(product: product);
              },
            ),
          ),

          // footer note
          Center(
            child: Text(
              "minimal x shop",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
