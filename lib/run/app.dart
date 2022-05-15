import 'package:flutter/material.dart';
import 'package:task_management/Components/task%20components/task_card.dart';
import 'package:task_management/Screens/add_tasks/add_task_view.dart';
import 'package:task_management/Screens/task_details/task_details.dart';
import 'package:task_management/Screens/task_view/task_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        //'/tasklist': (context) => const TaskDetails(),
        '/homepage': (context) => TaskHome(),
        '/addTask': (context) => AddTasks(),
      },
      home: Stack(children: [TaskHome()]),
    );
  }
}
