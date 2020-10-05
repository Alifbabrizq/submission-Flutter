import 'package:flutter/material.dart';
import 'package:submission_alif/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Submission',
      theme: ThemeData(),
      home: WelcomeScreen(),
    );
  }
}