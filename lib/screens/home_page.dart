import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'details_screens.dart';

/// Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ["All", "Combos", "Sliders", "Chicken"];
    final burgers = [
      {
        "title": "Cheeseburger Wendy’s Burger",
        "rating": 4.9,
        "image": "assets/images/image 9.png",
      },
      {
        "title": "Hamburger Veggie Burger",
        "rating": 4.6,
        "image": "assets/images/image 9.png",
      },
      {
        "title": "Hamburger Chicken Burger",
        "rating": 4.5,
        "image": "assets/images/image 9.png",
      },
      {
        "title": "Cheeseburger Wendy’s Burger",
        "rating": 4.9,
        "image": "assets/images/image 9.png",
      },
      {
        "title": "Hamburger Veggie Burger",
        "rating": 4.6,
        "image": "assets/images/image 9.png",
      },
      {
        "title": "Hamburger Chicken Burger",
        "rating": 4.5,
        "image": "assets/images/image 9.png",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Foodgo",
          style: GoogleFonts.lobster(textStyle: TextStyle(fontSize: 45)),
        ),
        actions: const [
          CircleAvatar(backgroundImage: AssetImage("assets/user.png")),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Search Bar
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0XFFef2a39),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(
                    child: Icon(Icons.menu, color: Colors.white, size: 30),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            /// Categories
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.red : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: index == 0 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),

            /// Burger Grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.8,
                ),
                itemCount: burgers.length,
                itemBuilder: (context, index) {
                  final burger = burgers[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductScreen(burger: burger),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/sp-1.png", height: 80),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${burger["title"]}",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("⭐ ${burger["rating"]}"),
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Color(0XFFef2a39),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white, size: 35),
      ),
    );
  }
}
