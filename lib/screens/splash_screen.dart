import 'package:assignment/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0XFFfc8089), Color(0XFFef2a39)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top: 280,
            right: 120,
            child: Text(
              "Foodgo",
              style: GoogleFonts.lobster(
                textStyle: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [Image(image: AssetImage("assets/images/sp-2.png"))],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 130,
            child: Column(
              children: [Image(image: AssetImage("assets/images/sp-1.png"))],
            ),
          ),
        ],
      ),
    );
  }
}
