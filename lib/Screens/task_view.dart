import 'package:flutter/material.dart';
import 'package:task_management/Components/task%20components/task_card.dart';
import 'package:task_management/Screens/task_view_body.dart';
import 'package:task_management/Screens/util.dart';
import 'package:task_management/styles.dart';

class TaskHome extends StatefulWidget {
  const TaskHome({Key? key}) : super(key: key);

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
            addTasks(context);
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
        body: TaskHomeBody(
          TaskCards: taskCards,
        ));
  }

  Future<dynamic> addTasks(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            children: [
              // checkListWidget("checkListText"),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 24, 0, 40),
                child: TextField(
                  controller: textCollected,
                  decoration: InputDecoration(hintText: "Input Task Name"),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("+ Add checklist"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      addTaskItem();
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                        child: Text(
                          "Save Task",
                          style: bodyTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
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

  void addTaskItem() {
    String taskCardUpdate = textCollected.text.toString().trim();
    var taskUIUpdate = TaskCard(
      cardStatus: "cardStatus",
      taskNote: taskCardUpdate,
      priorityColor: colorMatcher(PriorityType.HIGH.name),
      subTaskListOne: "subTaskListOne",
      subTaskListTwo: "subTaskListTwo",
    );
    taskCards.add(taskUIUpdate);
    textCollected.text = "";
    setState(() {});
  }

  Color colorMatcher(String priority) {
    if (priority == PriorityType.HIGH.name) {}
    return yellowColor;
  }
}
