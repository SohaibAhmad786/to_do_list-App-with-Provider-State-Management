import 'package:flutter/material.dart';
import 'package:todolist_app/Models/task_data.dart';
import 'package:todolist_app/Screens/todo_homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodoHomeScreen(),
      ),
    );
  }
}