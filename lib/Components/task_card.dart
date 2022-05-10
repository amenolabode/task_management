import 'package:flutter/material.dart';
import 'package:task_management/styles.dart';
// import 'package:task_management/globals.dart';

class TaskCard extends StatefulWidget {
  final String cardStatus;
  final String taskNote;
  final Color priorityColor;
  final String subTaskList;

  const TaskCard(
      {Key? key,
      required this.cardStatus,
      required this.taskNote,
      required this.priorityColor,
      required this.subTaskList})
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
    // bool value = false;

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
                const Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.article,
                      color: Color(0xff75D9FF),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
              child: Text(widget.taskNote, style: cardHeader),
            ),
            Row(
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: const Color(0xff8B93A6),
                                borderRadius: BorderRadius.circular(4)),
                            child: Theme(
                              child: Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.purple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(
                                    () {
                                      isChecked = value!;
                                    },
                                  );
                                },
                              ),
                              data: ThemeData(),
                            ),
                          ),
                        ),
                        Text(
                          widget.subTaskList,
                          style: subTasks,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: MoreVert(),
            ),
          ],
        ),
      ),
    );
  }
}

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
