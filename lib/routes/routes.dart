import 'package:assignment/routes/name_routes.dart';
import 'package:assignment/screens/home_page.dart';
import 'package:assignment/screens/note_details_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final Route = [
    GetPage(name: NameRoutes.home, page: () => HomePage()),
    GetPage(name: NameRoutes.noteDetails, page: () => NoteDetailsScreen()),

  ];
}
