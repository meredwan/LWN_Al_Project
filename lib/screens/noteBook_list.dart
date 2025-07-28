import 'package:flutter/material.dart';

class NotebookList extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChange;

  const NotebookList({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0XFFFFD6BA),
      ),
      child: Row(
        children: [
          Checkbox(
              checkColor: Colors.black,
              activeColor: Colors.white,
              value: taskCompleted, onChanged: onChange),
          //task name
          Text(
            taskName,
            style: TextStyle(
              decoration:
                  taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
