import 'package:flutter/material.dart';
import 'package:task_management/Screens/task_details/task_details.dart';
import 'package:task_management/Screens/task_view.dart';

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
        '/homepage': (context) => const TaskHome(),
      },
      home: Stack(children: const [TaskHome()]),
    );
  }
}
