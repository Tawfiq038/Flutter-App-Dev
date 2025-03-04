// ignore_for_file: unused_field

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];

  // reference the box
  final _myBox = Hive.box("mybox");

  // run this method if this is the first time opening this app
  void createInitialData() {
    todoList = [
      ["Do exercise.", false],
      ["Drink water", false],
    ];
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }

  // load the data from  the database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }
}
