import 'package:flutter/material.dart';

const displayedTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xff8D8E98),
);

class CardBasicInfo extends StatelessWidget {
  CardBasicInfo({
    required this.awesomeIcon,
    required this.displayedText,
  });

  final IconData awesomeIcon;
  final String displayedText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(size: 72, awesomeIcon),
        Text(displayedText, style: displayedTextStyle)
      ],
    );
  }
}
