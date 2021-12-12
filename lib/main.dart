import 'package:bmi_calculator/bmi_result.dart';
import 'package:bmi_calculator/bmi_screen.dart';
import 'package:bmi_calculator/home_screen.dart';
import 'package:bmi_calculator/info_screen.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiHomeScreen(),
    );
  }
}