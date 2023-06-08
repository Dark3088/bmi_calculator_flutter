import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final customColor = Color(0xff090C22);

    final customSwatch = MaterialColor(
      customColor.value,
      <int, Color>{
        50: customColor.withOpacity(0.1),
        100: customColor.withOpacity(0.2),
        200: customColor.withOpacity(0.3),
        300: customColor.withOpacity(0.4),
        400: customColor.withOpacity(0.5),
        500: customColor.withOpacity(0.6),
        600: customColor.withOpacity(0.7),
        700: customColor.withOpacity(0.8),
        800: customColor.withOpacity(0.9),
        900: customColor.withOpacity(1.0),
      },
    );
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primarySwatch: customSwatch,
        scaffoldBackgroundColor: customColor,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          foregroundColor: Colors.lightBlueAccent,
          backgroundColor: customSwatch,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
