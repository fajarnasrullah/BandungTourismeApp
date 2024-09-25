import 'package:flutter/material.dart';
import 'package:untitledflutter/detail_event.dart';
import 'package:untitledflutter/detail_scholarship.dart';
import 'package:untitledflutter/main_screen.dart';
import 'package:untitledflutter/detail_screen.dart';
import 'package:untitledflutter/model/scholarship_model.dart';
import 'package:untitledflutter/model/tes_event_model.dart';
import 'package:untitledflutter/tes_event_page.dart';
import 'package:untitledflutter/model/tes_category_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      home:
          EventScreen()
      // EventScreen(category: categoryList, )
      // DetailEvent(eventData: eventList[0]),
      // DetailScholarship(scholarshipData: scholarshipList[0],),
      // const MainScreen(),
    );
  }
}

