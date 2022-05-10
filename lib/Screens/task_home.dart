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
            children: const [
              Text(
                "data",
                style: Header,
              ),
              // TaskCard(cardStatus: "cardStatus")
              TaskCard(
                  cardStatus: "cardStatus",
                  taskNote: "Eat Banku",
                  priorityColor: Color(0xffFF8183),
                  subTaskList: "Yeah"),
              TaskCard(
                  cardStatus: "cardStatus",
                  taskNote: "random",
                  priorityColor: Color(0xffFDD064),
                  subTaskList: "Yeteey")
            ],
          )
        ],
      ),
    );
  }
}
