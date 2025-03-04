// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // drawer header: logo
          Column(
            children: [
              DrawerHeader(
                  child: Center(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              )),

              SizedBox(height: 25),

              // shop tile
              MyListTile(
                  icon: Icons.home,
                  text: "Shop",
                  onTap: () {
                    Navigator.pop(context);
                  }),

              // cart tile
              MyListTile(
                icon: Icons.shopping_cart,
                text: "Cart",
                onTap: () {
                  // navigator pop
                  Navigator.pop(context);

                  // go to cart page
                  Navigator.pushNamed(context, "/cart_page");
                },
              ),
            ],
          ),

          // exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              icon: Icons.logout,
              text: "Exit",
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, "/intro_page", (route) => false),
            ),
          ),
        ],
      ),
    );
  }
}
