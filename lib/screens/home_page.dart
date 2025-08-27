import 'package:assignment/controller/note_controller.dart';
import 'package:assignment/model/note_model.dart';
import 'package:assignment/screens/favourite_screen.dart';
import 'package:assignment/screens/note_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NoteController noteController = Get.put(NoteController());
  final TextEditingController titleController = TextEditingController();
  final TextEditingController disController = TextEditingController();
  int currentIndex = 0;
  List<Widget> pages = [NoteScreen(), FavouriteScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text(
          "Notes",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: GNav(
        onTabChange: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        backgroundColor: Colors.brown,
        activeColor: Colors.white,
        color: Colors.grey,
        selectedIndex: currentIndex,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.favorite_border, text: 'Likes'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        mini: false,
        backgroundColor: Colors.brown,
        onPressed: () {
          _showAlertDialog(context);
        },
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: SingleChildScrollView(
            child: AlertDialog(
              backgroundColor: Colors.grey[300],
              title: Text("Create a Note"),
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
                    noteController.addNote(
                      NoteModel(
                        titleController.text,
                        disController.text,
                        DateTime.now().toString(),
                      ),
                    );
                    Get.snackbar(
                      backgroundColor: Colors.grey[300],
                        snackPosition: SnackPosition.BOTTOM,
                        "Notes", "Notes Item Added");

                    Navigator.pop(context);
                    clearTextField();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Save"),
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
