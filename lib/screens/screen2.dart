import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  final String resultText;
  final String bmi;
  final String advise;

  SecondScreen(
      {Key? key,
      required this.resultText,
      required this.advise,
      required this.bmi})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculated BMI'),
      ),
      body: Column(
        children: [
          Text(
            resultText,
          ),
          Text(bmi),
          Text(advise),
        ],
      ),
    );
  }
}
