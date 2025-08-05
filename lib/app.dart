import 'package:assignment/screens/Login_page.dart';
import 'package:flutter/material.dart';

class LogInApp extends StatelessWidget {
  const LogInApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey[400]),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
