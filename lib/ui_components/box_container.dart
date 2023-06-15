import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

class UiBox extends StatelessWidget {
  UiBox({
    this.mColor,
    this.cardChild,
    this.onUpdateCard,
    required this.isActive,
    this.cardType,
  });

  Function(CardType? cardType)? onUpdateCard;

  final Color? mColor;
  final Widget? cardChild;
  final bool? isActive;
  final CardType? cardType;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () => onUpdateCard!(cardType!),
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: isActive! ? kActiveUiBoxColor : kInactiveUiBoxColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
