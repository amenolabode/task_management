import 'package:flutter/material.dart';
// import 'package:task_management/Components/task_card.dart';
import 'package:task_management/Screens/task_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TaskHome(),
    );
  }
}
