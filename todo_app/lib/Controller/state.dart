import 'package:get/get.dart';
import '../Model/todo.dart';

class Controller extends GetxController {
  ToDo todoGet = new ToDo(ListToDo: ["App1", "App1"]);

  void add(String text) {
    todoGet.ListToDo.add(text);
  }

  void delete(int index) {
    todoGet.ListToDo.removeAt(index);
  }
}
