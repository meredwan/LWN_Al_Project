import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../controller/note_controller.dart';
import '../model/note_model.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final favController = Get.put(NoteController());
  final Box favBox = Hive.box('fav');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: GetBuilder<NoteController>(
        builder: (_) {
          return favBox.keys.isEmpty
              ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.folder_copy_outlined),
                    Text("No Favorite Item"),
                  ],
                ),
              )
              : ValueListenableBuilder(
                valueListenable: favBox.listenable(),
                builder: (context, favBox, child) {
                  return ListView.builder(
                    itemCount: favBox.keys.length,
                    itemBuilder: (context, index) {
                      final NoteModel note = favBox.getAt(index);
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: _buildFavNotesDetails(note, index),
                      );
                    },
                  );
                },
              );
        },
      ),
    );
  }

  Widget _buildFavNotesDetails(NoteModel note, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(note.description, style: TextStyle(fontSize: 16)),
            Text(note.date, style: TextStyle(fontSize: 12)),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                favController.deleteFav(index);
              },
              icon: Icon(Icons.delete, color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
