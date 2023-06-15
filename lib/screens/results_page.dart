import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../ui_components/button_calculate.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.resultText,
    required this.bmiResult,
    required this.bmiInterpretation,
  });

  final String resultText;
  final String bmiResult;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 0,
            child: Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Your Result", style: kResultsPageTitleStyle),
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 32.0, right: 32.0, bottom: 32.0),
              decoration: BoxDecoration(color: kActiveUiBoxColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(resultText.toUpperCase(), style: kResultTextStyle),
                      Text(bmiResult, style: kBMITextStyle),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Normal BMI range:',
                          style: TextStyle(
                            color: kInactiveCardTextColor,
                            fontSize: 18.0,
                          )),
                      Text('18,5 - 25 kg/m2', style: TextStyle(fontSize: 18.0)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Text(bmiInterpretation,
                        textAlign: TextAlign.center, style: kBodyTextStyle),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 0,
              child: CalculateButton(
                buttonTitle: 'RE-CALCULATE YOUR BMI',
                onCalculatePressed: () => Navigator.pop(context),
              ))
        ],
      ),
    );
  }
}
