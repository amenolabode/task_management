import 'package:flutter/material.dart';
import 'package:task_management/styles.dart';

class DocumentCard extends StatelessWidget {
  final String documentTypeImage;
  final String documentName;
  final String documentSize;

  const DocumentCard(
      {Key? key,
      required this.documentTypeImage,
      required this.documentName,
      required this.documentSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      // height: 64,
      decoration: BoxDecoration(
          color: const Color(0xffBDCDEE),
          borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
        child: Row(
          children: [
            Image(
              width: 48,
              // height: 2,
              image: AssetImage(documentTypeImage),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    documentName,
                    style: darkBoldStyle,
                  ),
                  Text(documentSize, style: darkBody2Style),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
