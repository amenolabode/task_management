import 'package:flutter/material.dart';
import 'package:task_management/Screens/task_details/taskdetails_body.dart';
import 'package:task_management/Screens/task_view.dart';
import 'package:task_management/styles.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const TaskHome()),
        //     );
        //   },
        //   label: const Text(
        //     "Add new",
        //     style: bodyBoldStyle,
        //   ),
        //   icon: const Icon(Icons.add),
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(4),
        //   ),
        //   backgroundColor: primaryColor,
        //   elevation: 0,
        // ),
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
        body: const TaskDetailsBody());
  }
}
