import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  const Dialogbox({super.key});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Color(0XFFFFF2EB),
      content: Container(
        padding: EdgeInsets.all(5),
        height: 150,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Add a New Task",
                border: OutlineInputBorder()
              ),
            ),
            Row(
              children: [
                Container(
                  
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}
