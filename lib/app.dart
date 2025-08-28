import 'package:assignment/routes/name_routes.dart';
import 'package:assignment/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotepadApp extends StatelessWidget {
  const NotepadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NameRoutes.home,
      getPages: AppPages.Route,
    );
  }
}
