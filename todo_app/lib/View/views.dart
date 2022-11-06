import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/Controller/state.dart';
import 'package:todo_app/widget/widgetDo.dart';

class ViewToDo extends StatefulWidget {
  // final controller = Get.put((GetxController));

  const ViewToDo({super.key});

  @override
  State<ViewToDo> createState() => _MainPageState();
}

class _MainPageState extends State<ViewToDo> {
  final Controller todoGet = Get.put(Controller());

  var valuecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: valuecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
              onFieldSubmitted: ((value) {
                setState(() {
                  // add(value.toString());

                  todoGet.add(value.toString());
                  valuecontroller.clear();
                });
              }),
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              child: widgetGetx())
        ],
      ),
    );
  }
}
