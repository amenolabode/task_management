import 'package:flutter/material.dart';
import 'package:task_management/Components/more_vertical.dart';
import 'package:task_management/Components/priority_card.dart';
import 'package:task_management/Components/task%20components/task_list.dart';
import 'package:task_management/Screens/task_details/task_details.dart';
import 'package:task_management/styles.dart';

class TaskCard extends StatefulWidget {
  final String cardStatus;
  final String taskNote;
  final Color priorityColor;
  final String subTaskListOne;
  final String subTaskListTwo;

  const TaskCard(
      {Key? key,
      required this.cardStatus,
      required this.taskNote,
      required this.priorityColor,
      required this.subTaskListOne,
      required this.subTaskListTwo})
      : super(key: key);

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isChecked = false;
  bool visibilityToggle = false;

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
      child: GestureDetector(
        onTap: () {
          var card = TaskCard(
              cardStatus: widget.cardStatus,
              taskNote: widget.taskNote,
              priorityColor: widget.priorityColor,
              subTaskListOne: widget.subTaskListOne,
              subTaskListTwo: widget.subTaskListTwo);
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TaskDetails(taskCard: card)),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          // height: height * 0.2,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  PriorityCard(
                      cardStatus: widget.cardStatus,
                      priorityColor: widget.priorityColor),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.article,
                            color: articleColor,
                          ),
                        ),
                        Visibility(
                          visible: visibilityToggle,
                          child: const Icon(
                            Icons.timelapse,
                            color: fadedPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(widget.taskNote, style: cardHeader),
              ),
              Visibility(
                visible: visibilityToggle,
                child: Column(
                  children: [
                    TaskList(taskListText: widget.subTaskListOne),
                    TaskList(taskListText: widget.subTaskListTwo)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 8),
                child: Visibility(
                  // visible: !visibilityToggle,
                  child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            visibilityToggle = !visibilityToggle;
                          },
                        );
                      },
                      child: MoreVert()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
