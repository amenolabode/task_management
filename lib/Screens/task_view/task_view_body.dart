import 'package:flutter/material.dart';
import 'package:task_management/Screens/add_tasks/add_task_body.dart';
// import 'package:task_management/globals.dart';
// import 'package:task_management/Components/task%20components/task_card.dart';
import 'package:task_management/styles.dart';

class TaskViewBody extends StatefulWidget {
  

  TaskViewBody({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskViewBody> createState() => _TaskViewBodyState();
}

class _TaskViewBodyState extends State<TaskViewBody> {
  List<Widget> taskCards = [];
  
  @override
  Widget build(BuildContext context) {
    // List<Widget> checkListItems = [];

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
    // TaskCard(
    //             cardStatus: "High Priority", --- Three states
    //             taskNote: "Eat Banku", --- TextField
    //             priorityColor: redColor, --- Automated (if status = )
    //             subTaskListOne: "Yeah", --- Add checkList +
    //             subTaskListTwo: "Durrhhh",
    //           )
  }
}
