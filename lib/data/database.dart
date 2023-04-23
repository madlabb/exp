import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

//reference the box
  final _myBox = Hive.box('mybox');

//run this method 1st time open the app
  void createInitialData() {
    toDoList = [
      ["Complete assignments.", false],
      ["die", false],
    ];
  }

  //load the data from the db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the db
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
