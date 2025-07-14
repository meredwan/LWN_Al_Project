import 'package:assignment/screens/home.dart';
import 'package:assignment/screens/profile.dart';
import 'package:assignment/screens/store.dart';
import 'package:assignment/screens/wishlist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;
  int _index = 0;
  List<Widget> Screens = [Home(), Store(), wishlist(), profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Learn Flutter")),
      body: Screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.brown),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined, color: Colors.brown),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.brown),
            label: "wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.brown),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
