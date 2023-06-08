import 'package:bmi_calculator/card_basic_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cards.dart';

const bottomContainerHeight = 80.0;
const activeUiBoxColor = Color(0xff1D1F33);
const bottomContainerColor = Color(0xffEA1556);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                UiBox(
                    mColor: activeUiBoxColor,
                    cardChild: CardBasicInfo(
                        awesomeIcon: FontAwesomeIcons.mars,
                        displayedText: 'MALE')),
                UiBox(
                    mColor: activeUiBoxColor,
                    cardChild: CardBasicInfo(
                        awesomeIcon: FontAwesomeIcons.venus,
                        displayedText: 'FEMALE')),
              ],
            ),
          ),
          UiBox(mColor: activeUiBoxColor),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                UiBox(mColor: activeUiBoxColor),
                UiBox(mColor: activeUiBoxColor),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(fontSize: 22, fontFamily: 'Roboto'),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
