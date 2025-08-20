import 'package:assignment/screens/favourite_screen.dart';
import 'package:assignment/screens/note_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> pages = [NoteScreen(), FavouriteScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown, title: Text("Notes")),
      body: Column(children: []),
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
              title: Text("Create a Note"),
              content: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter a Title"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter a Describetion",
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {},
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
}
