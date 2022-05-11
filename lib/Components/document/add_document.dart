import 'package:flutter/material.dart';
import 'package:task_management/styles.dart';

class AddDocument extends StatelessWidget {
  const AddDocument({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      height: 72,
      decoration: BoxDecoration(
          color: fadedPrimaryColor.withOpacity(0.1),
          border: Border.all(
            width: 1.0,
            color: fadedPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(4)),
      child: const Center(
        child: Text(
          "Add a file",
          style: body2TextStyle,
        ),
      ),
    );
  }
}
