import 'package:flutter/material.dart';
// import 'package:task_management/Components/task%20components/task_card.dart';
import 'package:task_management/styles.dart';

class TaskHomeBody extends StatelessWidget {
  final TaskCards;

  const TaskHomeBody({Key? key, required this.TaskCards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> checkListItems = [];

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
                  children: TaskCards,
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
