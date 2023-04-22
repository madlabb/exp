import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui_redesign/screens/home_screen.dart';
import 'package:flutter_netflix_ui_redesign/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
