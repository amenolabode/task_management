import 'package:flutter/material.dart';
import 'package:task_management/Components/document/document_card.dart';
import 'package:task_management/Components/priority_card.dart';
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
                  style: cardHeader,
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
                  padding: EdgeInsets.only(top: 32.0),
                  child: Text(
                    "Attachments",
                    style: sectionHeader,
                  ),
                ),
                DocumentCard(
                  documentSize: "2mb",
                  documentName: "Name.pdf",
                  documentTypeImage: "assets/images/doc.png",
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
