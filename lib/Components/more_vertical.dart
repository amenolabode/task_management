import 'package:flutter/material.dart';

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
