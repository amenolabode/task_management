import 'package:flutter/material.dart';
import 'package:task_management/Components/task_card.dart';
import 'package:task_management/styles.dart';

class TaskHome extends StatelessWidget {
  const TaskHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Task Manager"),
      // ),
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
                      style: Header,
                    ),
                    Text(
                      "4 of 7 completed.",
                      style: bodyTextStyle_grey,
                    ),
                  ],
                ),
              ),
              const TaskCard(
                cardStatus: "High Priority",
                taskNote: "Eat Banku",
                priorityColor: Color(0xffFF8183),
                subTaskListOne: "Yeah",
                subTaskListTwo: "Durrhhh",
              ),
              const TaskCard(
                cardStatus: "Normal",
                taskNote: "random",
                priorityColor: Color(0xffFDD064),
                subTaskListOne: "Yeteey",
                subTaskListTwo: "Explain this",
              ),
              const TaskCard(
                cardStatus: "Normal",
                taskNote: "random",
                priorityColor: Color(0xffFDD064),
                subTaskListOne: "Yeteey",
                subTaskListTwo: "Explain this",
              ),
              const TaskCard(
                cardStatus: "Normal",
                taskNote: "random",
                priorityColor: Color(0xffFDD064),
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
