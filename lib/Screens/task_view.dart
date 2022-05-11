import 'package:flutter/material.dart';
import 'package:task_management/Components/task%20components/task_card.dart';
import 'package:task_management/styles.dart';

class TaskHome extends StatelessWidget {
  const TaskHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          "Add new",
          style: bodyBoldStyle,
        ),
        icon: const Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 0, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Today's Tasks",
                      style: header,
                    ),
                    Text(
                      "4 of 7 completed.",
                      style: bodyTextStyleGrey,
                    ),
                  ],
                ),
              ),
              const TaskCard(
                cardStatus: "High Priority",
                taskNote: "Eat Banku",
                priorityColor: redColor,
                subTaskListOne: "Yeah",
                subTaskListTwo: "Durrhhh",
              ),
              const TaskCard(
                cardStatus: "Normal",
                taskNote: "random",
                priorityColor: yellowColor,
                subTaskListOne: "Yeteey",
                subTaskListTwo: "Explain this",
              ),
              const TaskCard(
                cardStatus: "Normal",
                taskNote: "random",
                priorityColor: yellowColor,
                subTaskListOne: "Yeteey",
                subTaskListTwo: "Explain this",
              ),
              const TaskCard(
                cardStatus: "Normal",
                taskNote: "random",
                priorityColor: yellowColor,
                subTaskListOne: "Yeteey",
                subTaskListTwo: "Explain this",
              ),
              const TaskCard(
                cardStatus: "Normal",
                taskNote: "random",
                priorityColor: yellowColor,
                subTaskListOne: "Yeteey",
                subTaskListTwo: "Explain this",
              ),
              const TaskCard(
                cardStatus: "Normal",
                taskNote: "random",
                priorityColor: yellowColor,
                subTaskListOne: "Yeteey",
                subTaskListTwo: "Explain this",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
