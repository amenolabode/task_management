import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(8),
        height: height * 0.15,
        decoration: BoxDecoration(
          color: Color(0xff272B34),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                  decoration: BoxDecoration(
                      color: Color(0xffFDCC65),
                      borderRadius: BorderRadius.circular(4)),
                  child: Text("data"),
                ),
                Expanded(
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
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 16),
              child: Text(
                "Study for Exam",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
                height: 16,
                width: 36,
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(4)),
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
                )),
          ],
        ),
      ),
    );
  }
}
