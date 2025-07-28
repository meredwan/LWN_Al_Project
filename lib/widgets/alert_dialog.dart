import 'dart:async';

import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  final controller;
  VoidCallback save;
  VoidCallback cancel;

  Dialogbox({
    super.key,
    required this.controller,
    required this.save,
    required this.cancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0XFFFFF2EB),
      content: Container(
        padding: EdgeInsets.all(5),
        height: 150,
        child: Column(
          children: [
            TextFormField(
               controller: controller,
              decoration: InputDecoration(
                hintText: "Add a New Task",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildButton("Save", save),
                SizedBox(width: 10),
                buildButton("Cancel", cancel),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 5),
              blurRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          color: Color(0XFFFFD6BA),
        ),
        child: Text(text, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
