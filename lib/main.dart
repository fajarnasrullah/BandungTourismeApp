import 'package:flutter/material.dart';
import 'package:untitledflutter/main_screen.dart';
import 'package:untitledflutter/detail_screen.dart';

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
      home: const MainScreen(),
    );
  }
}

