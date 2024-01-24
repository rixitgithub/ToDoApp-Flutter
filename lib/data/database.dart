import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');

  //runthis method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Check the box when task completed", false],
      ["Slide left to delete the task", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
