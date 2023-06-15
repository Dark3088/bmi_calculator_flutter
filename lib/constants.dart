import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kActiveUiBoxColor = Color(0xff1D1E33);
const kInactiveUiBoxColor = Color(0xff111328);
const kBottomContainerColor = Color(0xffEB1555);
const kInactiveCardTextColor = Color(0xff8D8E98);

const kMinHeight = 120.0;
const kMaxHeight = 300.0;

const kLabelTextStyle = TextStyle(
  fontSize: 18,
  color: kInactiveCardTextColor,
);

const kCardStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  fontFamily: 'Roboto',
);

const kResultsPageTitleStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xff24d876),
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 56.0,
  fontWeight: FontWeight.w900,
);

const kBodyTextStyle = TextStyle(fontSize: 18.0);

final kCustomColor = Color(0xff090C22);

final kCustomSwatch = MaterialColor(
  kCustomColor.value,
  <int, Color>{
    50: kCustomColor.withOpacity(0.1),
    100: kCustomColor.withOpacity(0.2),
    200: kCustomColor.withOpacity(0.3),
    300: kCustomColor.withOpacity(0.4),
    400: kCustomColor.withOpacity(0.5),
    500: kCustomColor.withOpacity(0.6),
    600: kCustomColor.withOpacity(0.7),
    700: kCustomColor.withOpacity(0.8),
    800: kCustomColor.withOpacity(0.9),
    900: kCustomColor.withOpacity(1.0),
  },
);
