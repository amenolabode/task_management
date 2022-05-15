import 'package:flutter/material.dart';
import 'package:task_management/Components/task%20components/task_card.dart';
import 'package:task_management/Screens/add_tasks/add_task_view.dart';
import 'package:task_management/Screens/task_view/task_view_body.dart';
import 'package:task_management/Screens/util.dart';
import 'package:task_management/styles.dart';

class TaskHome extends StatefulWidget {
  TaskHome({Key? key}) : super(key: key);

  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  TextEditingController textCollected = TextEditingController();
  List<Widget> taskCards = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("Check point 1");
          Navigator.pushNamed(context, '/addTask').then((value) {
            var taskCard = value as TaskCard;
            taskCards.add(taskCard);
            setState(() {});
          });
        },
        label: const Text(
          "Add task",
          style: bodyBoldStyle,
        ),
        icon: const Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: _taskViewBody(),
    );
  }

  Row checkListWidget(String checkListText) {
    return Row(
      children: [
        Text(
          checkListText,
          style: darkBody2Style,
        ),
        const Expanded(
          child: Icon(
            Icons.remove_circle,
            color: redColor,
          ),
        )
      ],
    );
  }

  Color colorMatcher(String priority) {
    if (priority == PriorityType.HIGH.name) {}
    return yellowColor;
  }

  Widget _taskViewBody() {
    return Stack(
      children: [
        Container(
          color: Colors.black,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 0, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Your Tasks",
                      style: header,
                    ),
                    Text(
                      "4 of 7 completed.",
                      style: bodyTextStyleGrey,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: taskCards,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
