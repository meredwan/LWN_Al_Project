import 'package:flutter/material.dart';

class BanglaPoemDetails extends StatefulWidget {
  Map poem = {};

  BanglaPoemDetails({required this.poem});

  @override
  State<BanglaPoemDetails> createState() => _BanglaPoemDetailsState();
}

class _BanglaPoemDetailsState extends State<BanglaPoemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[500],
        centerTitle: true,
        title: Text(
          widget.poem["title"],
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.poem["title"],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              widget.poem["writer"],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(widget.poem["poem"], style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
