import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/View/views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
//create a text
      home: ViewToDo(),
    );
  }
}
