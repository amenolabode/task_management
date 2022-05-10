import 'package:flutter/material.dart';
import 'package:task_management/Components/CheckList_Box.dart';
import 'package:task_management/styles.dart';
// import 'package:task_management/globals.dart';

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

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    bool visibilityToggle = false;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        // height: height * 0.2,
        decoration: BoxDecoration(
          color: const Color(0xff272B34),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(6, 3, 6, 3),
                  decoration: BoxDecoration(
                      color: widget.priorityColor,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(widget.cardStatus),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      Icon(
                        Icons.article,
                        color: Color(0xff75D9FF),
                      ),
                      Icon(
                        Icons.timelapse,
                        color: Color(0xffB774F0),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
              child: Text(widget.taskNote, style: cardHeader),
            ),
            TaskList(widget.subTaskListOne),
            TaskList(widget.subTaskListTwo),
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Visibility(child: MoreVert()),
            ),
          ],
        ),
      ),
    );
  }

//Each line of subtasks
  Row TaskList(String taskListText) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: 2,
          height: 24,
          decoration: const BoxDecoration(color: Colors.white70),
        ),
        Row(
          children: [
            Row(
              children: [
                SubListCheckbox(),
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

//Vertical Clicker for expansion of task card
class MoreVert extends StatelessWidget {
  const MoreVert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 36,
      decoration: BoxDecoration(
          color: Colors.white30, borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 2, 2, 2),
            child: Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
            child: Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
            child: Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
