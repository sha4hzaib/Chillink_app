import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ChillInkApp());
}

class ChillInkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChillInk',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
