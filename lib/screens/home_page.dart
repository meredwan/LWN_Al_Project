import 'package:assignment/screens/details_screens.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> items = [
    {
      "name": "Mountain View",
      "image": "https://picsum.photos/id/1015/400/300",
      "description": "A breathtaking view of tall mountains touching the clouds."
    },
    {
      "name": "Forest Path",
      "image": "https://picsum.photos/id/1018/400/300",
      "description": "A peaceful walking path surrounded by lush green trees."
    },
    {
      "name": "City Skyline",
      "image": "https://picsum.photos/id/1025/400/300",
      "description": "A vibrant city skyline glowing under the evening lights."
    },
    {
      "name": "Ocean Waves",
      "image": "https://picsum.photos/id/1003/400/300",
      "description": "Strong waves crashing against the rocky shore."
    },
    {
      "name": "Sunny Beach",
      "image": "https://picsum.photos/id/1062/400/300",
      "description": "Golden sands and blue waters under the warm sunshine."
    },
    {
      "name": "Snowy Peak",
      "image": "https://picsum.photos/id/1074/400/300",
      "description": "A tall mountain peak covered in fresh white snow."
    },
    {
      "name": "Desert Road",
      "image": "https://picsum.photos/id/1084/400/300",
      "description": "A long empty road stretching through the desert."
    },
    {
      "name": "Green Valley",
      "image": "https://picsum.photos/id/1080/400/300",
      "description": "A calm valley with green grass and rolling hills."
    },
    {
      "name": "Sunset Glow",
      "image": "https://picsum.photos/id/1076/400/300",
      "description": "The warm glow of a sunset reflecting over the water."
    },
    {
      "name": "Bridge Over Water",
      "image": "https://picsum.photos/id/1071/400/300",
      "description": "A beautiful bridge stretching across a calm river."
    },
    {
      "name": "Morning Lake",
      "image": "https://picsum.photos/id/1024/400/300",
      "description": "A quiet lake with mist rising in the early morning."
    },
    {
      "name": "Old Street",
      "image": "https://picsum.photos/id/1014/400/300",
      "description": "A charming old street filled with history and life."
    },
    {
      "name": "Golden Field",
      "image": "https://picsum.photos/id/1001/400/300",
      "description": "A wide field of golden wheat under the summer sun."
    },
    {
      "name": "Flower Garden",
      "image": "https://picsum.photos/id/999/400/300",
      "description": "A colorful garden full of blooming flowers."
    },
    {
      "name": "Foggy Forest",
      "image": "https://picsum.photos/id/998/400/300",
      "description": "A mysterious forest covered in thick fog."
    },
    {
      "name": "Rocky Shore",
      "image": "https://picsum.photos/id/997/400/300",
      "description": "Large rocks along the coastline with waves hitting them."
    },
    {
      "name": "Lighthouse View",
      "image": "https://picsum.photos/id/996/400/300",
      "description": "A lighthouse standing tall beside the sea."
    },
    {
      "name": "Countryside",
      "image": "https://picsum.photos/id/995/400/300",
      "description": "A peaceful countryside with green fields and farms."
    },
    {
      "name": "Night Sky",
      "image": "https://picsum.photos/id/994/400/300",
      "description": "A sky full of bright stars on a clear night."
    },
    {
      "name": "Riverside",
      "image": "https://picsum.photos/id/993/400/300",
      "description": "A calm river flowing gently beside the trees."
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          "Grid View",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => DetailsScreens(name: items[index]),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(items[index]['image']),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
