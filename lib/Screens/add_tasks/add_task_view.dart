import 'package:flutter/material.dart';
import 'package:task_management/Screens/add_tasks/add_task_body.dart';

class AddTasks extends StatelessWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddTasksBody(),
    );
  }
}
