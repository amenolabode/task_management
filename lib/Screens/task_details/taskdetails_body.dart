// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:task_management/Components/document/add_document.dart';
import 'package:task_management/Components/document/document_card.dart';
import 'package:task_management/Components/priority_card.dart';
import 'package:task_management/Components/task%20components/task_list.dart';
import 'package:task_management/styles.dart';

class TaskDetailsBody extends StatefulWidget {
  const TaskDetailsBody({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskDetailsBody> createState() => _TaskDetailsBodyState();
}

class _TaskDetailsBodyState extends State<TaskDetailsBody> {
  List<Widget> taskList = [];
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: backgroundColor,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create a design system",
                  style: header,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: PriorityCard(
                            cardStatus: "cardStatus", priorityColor: redColor),
                      ),
                      PriorityCard(
                          cardStatus: "ongoing",
                          priorityColor: fadedPrimaryColor),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 32.0),
                  child: Text(
                    "Description",
                    style: sectionHeader,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    "This is a special kind of button which contains under the Scaffold class. This is placed and fixed at the right bottom corner of the screen. We can use it for sharing, refreshing, adding the content.",
                    style: bodyTextStyleGrey,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 32, 0, 16),
                  child: Text(
                    "Attachments",
                    style: sectionHeader,
                  ),
                ),
                Row(
                  children: const [
                    DocumentCard(
                      documentSize: "2mb",
                      documentName: "Name.pdf",
                      documentTypeImage: "assets/images/doc.png",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: AddDocument(),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 32.0),
                  child: Text(
                    "Checklist",
                    style: sectionHeader,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: taskList,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 56),
                  child: TextButton(
                      onPressed: () {
                        showAddListItem(context);
                      },
                      child: const Text(
                        "+ add task item",
                        style: bodyTextStylePurple,
                      )),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  //MARK: show the add list item dialog
  void showAddListItem(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 40),
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(hintText: "Input Task"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    addListItem();
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: const Text(
                        "Save Task",
                        style: bodyTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void addListItem() {
    String taskName = textEditingController.text.toString().trim();
    var listItem = Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TaskList(taskListText: taskName),
    );
    taskList.add(listItem);
    setState(() {});
  }
}
