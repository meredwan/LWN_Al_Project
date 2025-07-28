import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotebookList extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChange;
  final Function(BuildContext)? delete;

  const NotebookList({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChange,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: StretchMotion(),
        children: [
          SlidableAction(
            foregroundColor: Colors.white,
            label: "delete",
            onPressed: delete,
            flex: 1,
            icon: Icons.delete_outline,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
        ],
      ),
      child: Container(
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
              value: taskCompleted,
              onChanged: onChange,
            ),
            //task name
            Text(
              taskName,
              style: TextStyle(
                fontSize: 18,
                decoration:
                    taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
