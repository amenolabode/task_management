import 'dart:html';

import 'package:flutter/material.dart';
import 'package:task_management/Components/document/add_document.dart';
import 'package:task_management/Components/document/document_card.dart';
import 'package:task_management/Components/priority_card.dart';
import 'package:task_management/Components/task%20components/task_list.dart';
import 'package:task_management/styles.dart';

class TaskDetailsBody extends StatelessWidget {
  const TaskDetailsBody({
    Key? key,
  }) : super(key: key);

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
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: TaskList(taskListText: "taskListText"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: TaskList(taskListText: "taskListText"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: TaskList(taskListText: "taskListText"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: TaskList(taskListText: "taskListText"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: TaskList(taskListText: "taskListText"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 56),
                  child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Wrap(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.share),
                                  title: Text('Share'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.copy),
                                  title: Text('Copy Link'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.edit),
                                  title: Text('Edit'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
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
}
