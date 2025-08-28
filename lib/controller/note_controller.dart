import 'package:assignment/model/note_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class NoteController extends GetxController {
  final Box box = Hive.box('notes');
  final Box favBox = Hive.box('fav');

  void addNote(NoteModel note) {
    box.add(note);
    update();
  }

  void deleteNote(int index) {
    box.deleteAt(index);
    update();
  }

  void noteUpdate(int index, NoteModel note) {
    box.putAt(index, note);
    update();
  }

  void addFavorite(NoteModel note) {
    favBox.add(note);
    update();
  }

  void deleteFav(int index) {
    favBox.deleteAt(index);
    update();
  }

  void copyText(String text) {
    Clipboard.setData(ClipboardData(text: text));
    update();
  }
}
