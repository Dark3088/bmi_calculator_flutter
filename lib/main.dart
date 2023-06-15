import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primarySwatch: kCustomSwatch,
        scaffoldBackgroundColor: kCustomColor,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          foregroundColor: Colors.lightBlueAccent,
          backgroundColor: kCustomSwatch,
        ),
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
