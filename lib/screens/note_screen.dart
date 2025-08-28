import 'package:assignment/controller/note_controller.dart';
import 'package:assignment/model/note_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../routes/name_routes.dart';

class NoteScreen extends StatelessWidget {
  NoteScreen({super.key});

  NoteController controller = Get.put(NoteController());
  TextEditingController titleController = TextEditingController();
  TextEditingController disController = TextEditingController();
  final Box box = Hive.box("notes");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: GetBuilder<NoteController>(
        builder: (_) {
          return box.keys.isEmpty
              ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Center(child: Icon(Icons.file_copy)), Text("Empty")],
              )
              : ValueListenableBuilder(
                valueListenable: box.listenable(),
                builder: (context, box, child) {
                  return ListView.builder(
                    itemCount: box.keys.length,
                    itemBuilder: (context, index) {
                      final NoteModel note = box.getAt(index);
                      return InkWell(
                        onTap: () {
                          Get.toNamed(
                            NameRoutes.noteDetails,
                            arguments: {'note': note},
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: buildNotesScreeDetails(note, context, index),
                        ),
                      );
                    },
                  );
                },
              );
        },
      ),
    );
  }

  Widget buildNotesScreeDetails(
    NoteModel note,
    BuildContext context,
    int index,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                overflow: TextOverflow.ellipsis,
                note.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                overflow: TextOverflow.ellipsis,
                note.description,
                style: TextStyle(fontSize: 16),
              ),
              Text(note.date, style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                titleController.text = note.title;
                disController.text = note.description;
                noteUpdateScreen(context, index);
              },
              icon: Icon(Icons.edit, color: Colors.brown),
            ),
            IconButton(
              onPressed: () {
                controller.deleteNote(index);
              },
              icon: Icon(Icons.delete, color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }

  void noteUpdateScreen(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: SingleChildScrollView(
            child: AlertDialog(
              backgroundColor: Colors.grey[200],
              title: Text("Update a Note"),
              content: Column(
                children: [
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(hintText: "Enter a Title"),
                  ),
                  TextFormField(
                    controller: disController,
                    decoration: InputDecoration(
                      hintText: "Enter a Describetion",
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    clearTextField();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    controller.noteUpdate(
                      index,
                      NoteModel(
                        titleController.text,
                        disController.text,
                        DateTime.now().toString(),
                      ),
                    );
                    Get.snackbar(
                      backgroundColor: Colors.grey[100],
                      'Update',
                      'Update this Notes',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    Navigator.pop(context);
                    clearTextField();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Update"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void clearTextField() {
    titleController.clear();
    disController.clear();
  }
}
