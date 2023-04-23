import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Container(
          height: 400.0,
          width: 400.0,
          child: Column(
            children: [
              Text('DecorHub', style: TextStyle(fontSize: 40.0, fontFamily: 'mexcellent'), textAlign: TextAlign.center,),
              Text('Bring life to your living space', style: TextStyle(fontSize: 13.0, fontFamily: 'Poppins'), textAlign: TextAlign.center,),
            ],
          ),
        ),
        nextScreen: const MyLogin(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
      ),
    );
  }
}