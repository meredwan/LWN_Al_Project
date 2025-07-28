import 'package:assignment/screens/noteBook_list.dart';
import 'package:assignment/widgets/alert_dialog.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController newTaskController = TextEditingController();
  List toDo_List = [
    ["Note Book Apps for Flutter", false],
    ["Build Android apps", false],
    ["Build iOS apps", false],
  ];

  void checkedboxChanged(bool? value, int index) {
    setState(() {
      toDo_List[index][1] = !toDo_List[index][1];
    });
  }

  void clearTextField() {
    newTaskController.clear();
  }

  void saveTask() {
    if (newTaskController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Color(0XFFFFD6BA),
          content: Text(
            "Task cannot be empty",
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
      Navigator.of(context).pop();
    } else {
      setState(() {
        toDo_List.add([newTaskController.text.trim(), false]);
      });
      Navigator.of(context).pop();
      clearTextField();
    }
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialogbox(
          controller: newTaskController,
          save: saveTask,
          cancel: () => Navigator.pop(context),
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      toDo_List.removeAt(index);
    });
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
              onChange: (value) => checkedboxChanged(value, index),
              delete: (p0) => deleteTask(index),
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
