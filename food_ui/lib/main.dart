import 'package:flutter/material.dart';
import 'package:food_ui/screens/home/home_screen.dart';
import 'package:food_ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      theme: buildThemeData(),
      home: const HomeScreen(),
    );
  }
}

