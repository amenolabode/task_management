import 'package:flutter/material.dart';
import 'package:task_management/Components/task%20components/task_card.dart';
import 'package:task_management/Screens/task_details/taskdetails_body.dart';
import 'package:task_management/styles.dart';

class TaskDetails extends StatelessWidget {
  TaskDetails({Key? key, required this.taskCard}) : super(key: key);
  final TaskCard taskCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          title: const Text(
            "Task",
            style: bodyTextStyleGrey,
          ),
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
        body: TaskDetailsBody(
          taskCard: taskCard,
        ));
  }
}
