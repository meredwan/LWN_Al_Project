import 'package:assignment/screens/home_page.dart';
import 'package:assignment/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class foodgoApp extends StatelessWidget {
  const foodgoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
