import 'package:flutter/material.dart';
import 'package:task_management/styles.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Task"),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        shadowColor: null,
      ),
      body: Container(
        decoration: BoxDecoration(color: backgroundColor),
      ),
    );
  }
}
