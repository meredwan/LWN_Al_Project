import 'dart:ffi';

import 'package:assignment/Model/user_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel> userList = [
    UserModel(
      "1",
      "Redwan Islam",
      "redwan@example.com",
      "01700000001",
      "https://scontent.fdac1-1.fna.fbcdn.net/v/t39.30808-6/472785908_3009405665903901_6169217423564507167_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGnT0vketF56wGojyCRHYCan-QNMgxweNSf5A0yDHB41HbxKDl4fg--Pr0tzYsjMP2xk9rl9o-tjj7BNsjp_BAD&_nc_ohc=4RyvptxZktwQ7kNvwGHjXJl&_nc_oc=AdmHlXc6sSle5Cei00fYc5T9082rYY4cD8df0pVZnmwpqn8AYRKE8uJ8nrC4pDV5zKYQK8jCo0xu8geepIVWKqIA&_nc_zt=23&_nc_ht=scontent.fdac1-1.fna&_nc_gid=8T7K5V2xEhQAQ63989izxA&oh=00_AfRRQrCYT0PehHp-ENsLeGG4bcXhYTQX3tXBTjgiw0X5Gg&oe=6878400E",
    ),
    UserModel(
      "2",
      "Ayesha Siddiqua",
      "ayesha@example.com",
      "01700000002",
      "https://randomuser.me/api/portraits/women/2.jpg",
    ),
    UserModel(
      "3",
      "Hasan Mahmud",
      "hasan@example.com",
      "01700000003",
      "https://randomuser.me/api/portraits/men/3.jpg",
    ),
    UserModel(
      "4",
      "Nusrat Jahan",
      "nusrat@example.com",
      "01700000004",
      "https://randomuser.me/api/portraits/women/4.jpg",
    ),
    UserModel(
      "5",
      "Shakil Ahmed",
      "shakil@example.com",
      "01700000005",
      "https://randomuser.me/api/portraits/men/5.jpg",
    ),
    UserModel(
      "6",
      "Sadia Akter",
      "sadia@example.com",
      "01700000006",
      "https://randomuser.me/api/portraits/women/6.jpg",
    ),
    UserModel(
      "7",
      "Tanvir Hossain",
      "tanvir@example.com",
      "01700000007",
      "https://randomuser.me/api/portraits/men/7.jpg",
    ),
    UserModel(
      "8",
      "Maliha Sultana",
      "maliha@example.com",
      "01700000008",
      "https://randomuser.me/api/portraits/women/8.jpg",
    ),
    UserModel(
      "9",
      "Rasel Kabir",
      "rasel@example.com",
      "01700000009",
      "https://randomuser.me/api/portraits/men/9.jpg",
    ),
    UserModel(
      "10",
      "Tanjina Alam",
      "tanjina@example.com",
      "01700000010",
      "https://randomuser.me/api/portraits/women/10.jpg",
    ),
  ];
  int _expandedIndex=-1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "User Information",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 4),
              elevation: 2,
              shadowColor: Colors.black,
              child: ExpansionTile(
                key: Key('$index$_expandedIndex'),
                initiallyExpanded: _expandedIndex == index,
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    _expandedIndex = expanded ? index : -1;
                  });
                },
                title: Text(
                  userList[index].name!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  userList[index].email!,
                  style: TextStyle(fontSize: 16),
                ),
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(userList[index].profileImageUrl!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                trailing: Icon(Icons.keyboard_arrow_down, size: 40),
                // default is also a down arrow
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phone: ${userList[index].phone}",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "ID: ${userList[index].id}",
                          style: TextStyle(fontSize: 16),
                        ),
                        // Add more info here
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
