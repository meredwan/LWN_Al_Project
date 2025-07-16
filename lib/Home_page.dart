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
      appBar: AppBar(
        backgroundColor: Colors.brown[500],
        centerTitle: true,
        title: Text(
          "Learn Flutter",
          style: TextStyle(fontSize: 24, color: Colors.white60),
        ),
      ),
      body: Screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[900],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.brown[400],
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.brown[400],
            icon: Icon(Icons.store_outlined),
            activeIcon: Icon(Icons.storefront),
            label: "Store",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.brown[400],
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite),
            label: "Favorate",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.brown[400],
            icon: Icon(Icons.person_2_outlined),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
