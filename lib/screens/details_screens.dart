import 'package:flutter/material.dart';

class DetailsScreens extends StatefulWidget {
  Map name = {};

  DetailsScreens({super.key, required this.name});

  @override
  State<DetailsScreens> createState() => _DetailsScreensState();
}

class _DetailsScreensState extends State<DetailsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          widget.name['name'],
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.name['image']),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              textAlign: TextAlign.justify,
              widget.name['description'],
              style: TextStyle(fontSize: 24, ),
            ),
          ),
        ],
      ),
    );
  }
}
