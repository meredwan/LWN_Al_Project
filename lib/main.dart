import 'package:assignment/app.dart';
import 'package:assignment/model/note_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox("notes");
  await Hive.openBox('fav');
  runApp(NotepadApp());
}
