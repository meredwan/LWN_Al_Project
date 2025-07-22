import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://scontent.fdac148-1.fna.fbcdn.net/v/t39.30808-6/472785908_3009405665903901_6169217423564507167_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGnT0vketF56wGojyCRHYCan-QNMgxweNSf5A0yDHB41HbxKDl4fg--Pr0tzYsjMP2xk9rl9o-tjj7BNsjp_BAD&_nc_ohc=Lq67sWkvs-AQ7kNvwE69BKv&_nc_oc=AdnRD2D2wyCZz0iugQog8HCAxsc1Cgvtyjf_JQAKQcWf7Vn3nAsMVPJUruf3Bstvw2w&_nc_zt=23&_nc_ht=scontent.fdac148-1.fna&_nc_gid=iR431-wsQc7JNeTLb_BFAg&oh=00_AfSpEJv7ei0rr_5OrDLvM5H7WPXXuHcXJR00D0dQUoIvug&oe=68841D8E',
                          ),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 100,
                  right: 100,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.edit, color: Colors.white),
                  ),
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Redwan Islam",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Container(
              height: 60,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "me.redwanislam@gmail.com",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            buildContainer(Icons.edit, 'Edit Profile'),
            buildContainer(Icons.lock, 'Add Pin'),
            buildContainer(Icons.settings, 'Setting'),
            buildContainer(Icons.person, 'Invite a Friend'),
            buildContainer(Icons.login, 'Log Out'),
          ],
        ),
      ),
    );
  }

  Container buildContainer(IconData icon, String title) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(2),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, size: 25,),
                SizedBox(width: 8),
                Text(title, style: TextStyle(fontSize: 18)),
              ],
            ),
            Icon(Icons.arrow_forward_ios_rounded, size: 25,),
          ],
        ),
      ),
    );
  }
}
