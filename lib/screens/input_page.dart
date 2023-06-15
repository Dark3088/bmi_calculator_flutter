import 'package:bmi_calculator/calculator_bmi.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/ui_components/card_basic_info.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../ui_components/box_container.dart';
import '../ui_components/button_calculate.dart';
import '../ui_components/card_personal_info.dart';
import '../constants.dart';

enum CardType { Male, Female, None }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 18;
  var currentCard = CardType.None;
  void updateCard(CardType cardType) => setState(() => currentCard = cardType);

  void increaseWeight() => setState(() => weight >= 400 ? weight : weight++);
  void decreaseWeight() => setState(() => weight <= 0 ? weight : weight--);
  void increaseAge() => setState(() => age >= 200 ? age : age++);
  void decreaseAge() => setState(() => age <= 0 ? age : age--);

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
              child: Row(children: [
                UiBox(
                  cardType: CardType.Male,
                  isActive: currentCard == CardType.Male,
                  onUpdateCard: (cardType) => updateCard(cardType!),
                  cardChild: CardBasicInfo(
                      awesomeIcon: FontAwesomeIcons.mars,
                      displayedText: 'MALE'),
                ),
                UiBox(
                    cardType: CardType.Female,
                    isActive: currentCard == CardType.Female,
                    onUpdateCard: (cardType) => updateCard(cardType!),
                    cardChild: CardBasicInfo(
                        awesomeIcon: FontAwesomeIcons.venus,
                        displayedText: 'FEMALE'))
              ])),
          UiBox(
            mColor: kActiveUiBoxColor,
            isActive: false,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height', style: kLabelTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [Text('$height', style: kCardStyle), Text('cm')],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    thumbColor: kBottomContainerColor,
                    inactiveTrackColor: kInactiveCardTextColor,
                    overlayColor: kBottomContainerColor.withOpacity(0.16),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(
                    min: kMinHeight,
                    max: kMaxHeight,
                    value: height.toDouble(),
                    onChanged: (newValue) {
                      setState(() => height = newValue.round());
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                UiBox(
                    isActive: false,
                    mColor: kActiveUiBoxColor,
                    cardChild: PersonalInfoCard(
                      labelText: 'WEIGHT',
                      personalData: weight,
                      onDecrement: decreaseWeight,
                      onIncrement: increaseWeight,
                    )),
                UiBox(
                    isActive: false,
                    mColor: kActiveUiBoxColor,
                    cardChild: PersonalInfoCard(
                      labelText: 'AGE',
                      personalData: age,
                      onDecrement: decreaseAge,
                      onIncrement: increaseAge,
                    )),
              ],
            ),
          ),
          CalculateButton(
              buttonTitle: 'CALCULATE',
              onCalculatePressed: () {
                var calc = CalculatorBMI(height: height, weight: weight);
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getBmiResult(),
                          bmiInterpretation: calc.getBodyMassInterpretation())),
                );
              }),
        ],
      )),
    );
  }
}
