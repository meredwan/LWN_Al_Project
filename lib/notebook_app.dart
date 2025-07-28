import 'package:assignment/screens/home_view.dart';
import 'package:flutter/material.dart';

class NoteBook extends StatelessWidget {
  const NoteBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView(), debugShowCheckedModeBanner: false);
  }
}
