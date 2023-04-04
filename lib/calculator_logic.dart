// ignore: file_names
import 'dart:math';
// import 'package:flutter/material.dart';

class Calculate {
  final int height;
  final int weight;

  double bmi = 0;
  String result() {
    bmi = (weight / pow(height / 100, 2));
    return bmi.toStringAsFixed(1);
  }

  Calculate({required this.height, required this.weight});
  String getText() {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'Underweight';
    }
  }

  String getAdvise() {
    if (bmi >= 25) {
      return 'You have a more than normal body weight.\n Excercise more';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight';
    } else {
      return 'You have a lower body weight .\n Try to eat more';
    }
  }
}
