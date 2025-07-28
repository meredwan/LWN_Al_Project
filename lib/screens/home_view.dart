import 'package:assignment/screens/noteBook_list.dart';
import 'package:assignment/widgets/alert_dialog.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List toDo_List = [
    ["Build Android apps", false],

    ["Build iOS apps", false],

  ];

  void checkboxedChanged(bool? value, int index) {
    setState(() {
      toDo_List[index][1] = !toDo_List[index][1];
    });
  }

  void createNewTask(){
     showDialog(context: context, builder: (context) {
       return Dialogbox();
     },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFF2EB),
      appBar: AppBar(
        backgroundColor: Color(0XFFFFD6BA),
        title: Text("Note Books"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          itemCount: toDo_List.length,
          itemBuilder: (context, index) {
            return NotebookList(
              taskName: toDo_List[index][0],
              taskCompleted: toDo_List[index][1],
              onChange: (value) => checkboxedChanged(value, index),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFFFFD6BA),
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
    );

  }
}
