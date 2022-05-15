import 'package:flutter/material.dart';
import 'package:task_management/Components/task%20components/task_card.dart';
import 'package:task_management/Screens/task_view/task_view.dart';
// import 'package:task_management/globals.dart';
import 'package:task_management/styles.dart';

class AddTasksBody extends StatefulWidget {
  // final taskCards;
  AddTasksBody({
    Key? key,
  }) : super(key: key);

  @override
  State<AddTasksBody> createState() => _AddTasksBodyState();
}

class _AddTasksBodyState extends State<AddTasksBody> {
  TextEditingController textCollected = TextEditingController();
  final listItems = ['HIGH', 'MEDIUM', 'LOW'];
  List<Widget> taskCards = [];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        children: [
          // checkListWidget("checkListText"),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
            child: TextField(
              controller: textCollected,
              decoration: const InputDecoration(hintText: "Input Task Name"),
            ),
          ),
          DropdownButton<String>(
            value: value,
            items: listItems.map(buildMenuItem).toList(),
            icon: const Icon(Icons.arrow_drop_down),
            onChanged: (value) {
              setState(
                () {
                  this.value = value;
                },
              );
            },
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
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
      value: item,
      child: Text(item),
    );
  }

  void addTaskItem() {
    String taskCardUpdate = textCollected.text.toString().trim();
    var taskUIUpdate = TaskCard(
      cardStatus: "cardStatus",
      taskNote: taskCardUpdate,
      priorityColor: redColor,
      subTaskListOne: "subTaskListOne",
      subTaskListTwo: "subTaskListTwo",
    );

    textCollected.text = "";
    setState(() {
      print("Check point 2");
      taskCards.add(taskUIUpdate);
    });
    Navigator.pop(context, taskUIUpdate);
  }
}
