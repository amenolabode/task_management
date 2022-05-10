import 'package:flutter/material.dart';

class SubListCheckbox extends StatefulWidget {
  const SubListCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  State<SubListCheckbox> createState() => _SubListCheckboxState();
}

class _SubListCheckboxState extends State<SubListCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
