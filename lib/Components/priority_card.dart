import 'package:flutter/material.dart';

class PriorityCard extends StatelessWidget {
  final String cardStatus;
  final Color priorityColor;

  const PriorityCard({
    Key? key,
    required this.cardStatus,
    required this.priorityColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(6, 3, 6, 3),
      decoration: BoxDecoration(
          color: priorityColor, borderRadius: BorderRadius.circular(4)),
      child: Text(cardStatus),
    );
  }
}
