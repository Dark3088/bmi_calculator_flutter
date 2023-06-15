import 'package:flutter/material.dart';
import '../constants.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key? key,
    required this.buttonTitle,
    required this.onCalculatePressed,
  }) : super(key: key);

  final Function() onCalculatePressed;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCalculatePressed,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(buttonTitle, style: kLargeButtonStyle),
        ),
      ),
    );
  }
}
