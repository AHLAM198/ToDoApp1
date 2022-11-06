import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/state.dart';

class widgetGetx extends StatefulWidget {
  const widgetGetx({Key? key}) : super(key: key);

  @override
  State<widgetGetx> createState() => _widgetGetxState();
}

class _widgetGetxState extends State<widgetGetx> {
  final Controller TodoController = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: TodoController.todoGet.ListToDo.length,
            itemBuilder: (context, index) {
              return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                      title: Text(TodoController.todoGet.ListToDo[index]),
                      leading: Icon(Icons.check_box_outline_blank),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            TodoController.delete(index);
                          });

                          Get.back();
                        },
                        icon: Icon(Icons.delete),
                      )));
            }));
  }
}
