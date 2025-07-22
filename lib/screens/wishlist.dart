import 'package:flutter/material.dart';

class wishlist extends StatefulWidget {
  const wishlist({super.key});

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child:Text("Selected your favorite poem", style: TextStyle(color: Colors.brown, fontSize: 24))
      ),
    );;
  }
}
