import 'package:assignment/controller/note_controller.dart';
import 'package:assignment/model/note_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class NoteDetailsScreen extends StatelessWidget {
  const NoteDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NoteModel note = Get.arguments['note'];
    final favController = Get.put(NoteController());
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text(
          "Notes Details",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          //Fav Button
          IconButton(
            onPressed: () {
              favController.addFavorite(note);
              Get.snackbar(
                backgroundColor: Colors.grey[100],
                'Likes',
                'This Note added to Likes',
                snackPosition: SnackPosition.BOTTOM,
              );
            },
            icon: Icon(Icons.favorite_border, color: Colors.white),
          ),
          //Copy Button
          IconButton(
            onPressed: () {
              favController.copyText(note.title);
              Get.snackbar("Copied", "Text copied to clipboard");
            },
            icon: Icon(Icons.copy, color: Colors.white),
          ),
          //Share Button
          IconButton(
            onPressed: () {
              SharePlus.instance.share(ShareParams(text: "Shared text"));
              Get.snackbar("Shared", "This item to Shared");
            },
            icon: Icon(Icons.share, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Note Title: ${note.title}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Note Des: ${note.description}",
              style: TextStyle(fontSize: 16),
            ),
            Text("Time: ${note.date}", style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
