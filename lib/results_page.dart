import 'CalculatorBrain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColour,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: ktitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMItextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kbodytextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kCalculateBtnStyle,
                ),
              ),
              padding: EdgeInsets.only(bottom: 20.0),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomBarheight,
            ),
          ),
        ],
      ),
    );
  }
}
