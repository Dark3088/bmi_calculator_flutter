import 'package:flutter/material.dart';

class UiBox extends StatelessWidget {
  UiBox({required this.mColor, this.cardChild});

  final Color mColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: mColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
