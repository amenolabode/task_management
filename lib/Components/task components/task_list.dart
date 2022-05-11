import 'package:flutter/material.dart';
import 'package:task_management/Components/CheckList_Box.dart';
import 'package:task_management/styles.dart';

class TaskList extends StatelessWidget {
  final String taskListText;
  const TaskList({Key? key, required this.taskListText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: 2,
          height: 32,
          decoration: const BoxDecoration(color: Colors.white70),
        ),
        Row(
          children: [
            Row(
              children: [
                const SubListCheckbox(),
                Text(
                  taskListText,
                  style: subTasks,
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
