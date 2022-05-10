import 'package:flutter/material.dart';
import 'package:task_management/Components/task_card.dart';

class TaskHome extends StatelessWidget {
  const TaskHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Manager"),
      ),
      body: TaskCard(),
    );
  }
}
