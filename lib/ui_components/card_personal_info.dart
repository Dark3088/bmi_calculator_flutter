import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class PersonalInfoCard extends StatelessWidget {
  PersonalInfoCard({
    required this.labelText,
    required this.personalData,
    required this.onIncrement,
    required this.onDecrement,
  });
  final String labelText;
  final int personalData;
  final Function() onIncrement;
  final Function() onDecrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(labelText, style: kLabelTextStyle),
        Text('$personalData', style: kCardStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RawIconButton(
                icon: FontAwesomeIcons.minus, onUpdateWeight: onDecrement),
            RawIconButton(
              icon: FontAwesomeIcons.plus,
              onUpdateWeight: onIncrement,
            ),
          ],
        ),
      ],
    );
  }
}

class RawIconButton extends StatelessWidget {
  RawIconButton({required this.icon, required this.onUpdateWeight});
  final IconData icon;
  final Function() onUpdateWeight;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: kActiveUiBoxColor,
      elevation: 6,
      onPressed: onUpdateWeight,
      constraints: BoxConstraints().tighten(width: 56, height: 56),
    );
  }
}
