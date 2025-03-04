import 'package:flutter/material.dart';

class PopularModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool boxIsSelected;

  PopularModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.boxIsSelected,
  });

  static List<PopularModel> getPopuler() {
    List<PopularModel> popular = [];

    popular.add(
      PopularModel(
        name: 'Chicken',
        iconPath: 'assets/icons/chicken-svgrepo-com.svg',
        level: 'Easy',
        duration: '30mins',
        calorie: '180kCal',
        boxColor: Color(0xff92A3FD),
        boxIsSelected: true,
      ),
    );

    popular.add(
      PopularModel(
        name: 'Eggs',
        iconPath: 'assets/icons/kitchen-pack-breakfast-svgrepo-com.svg',
        level: 'Easy',
        duration: '20mins',
        calorie: '230kCal',
        boxColor: Color(0xff92A3FD),
        boxIsSelected: true,
      ),
    );

    popular.add(
      PopularModel(
        name: 'Fruits',
        iconPath: 'assets/icons/fruits-svgrepo-com.svg',
        level: 'Easy',
        duration: '20mins',
        calorie: '230kCal',
        boxColor: Color(0xffC58BF2),
        boxIsSelected: true,
      ),
    );

    return popular;
  }
}
