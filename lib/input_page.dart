import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusableCard.dart';
import 'constants.dart';
import 'CalculatorBrain.dart';

enum gender {
  male,
  female,
  nogender,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender selectedGender = gender.nogender;

  int height = 180;
  int weight = 50;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainAppBackgroundColor,
        title: Text('BMI CALCULATOR'),
        titleTextStyle: kApptitleTextStyle,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.male;
                      });
                    },
                    child: reusableCard(
                      colour: selectedGender == gender.male
                          ? kInActiveMaleColor
                          : kInactiveCardColour,
                      cardChild: IconColumn(
                        icon: FontAwesomeIcons.mars,
                        lebel: 'MALE',
                        iconcolor: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.female;
                      });
                    },
                    child: reusableCard(
                      colour: selectedGender == gender.female
                          ? kInActiveFemaleColor
                          : kInactiveCardColour,
                      cardChild: IconColumn(
                        icon: FontAwesomeIcons.venus,
                        lebel: 'FEMALE',
                        iconcolor: Colors.pinkAccent,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          // Height Section
          Expanded(
            child: reusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kLebelTextStyle,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              ' cm',
                              style: kLebelTextStyle,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kActiveTrackColor,
                      inactiveTrackColor: kInActiveTrackColor,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      thumbColor: kThumbColor,
                      overlayColor: kThumbOverlayColor,
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          // Weight Section
          Expanded(
            child: reusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Weight',
                        style: kLebelTextStyle,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              ' Kgs',
                              style: kLebelTextStyle,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kActiveTrackColor,
                      inactiveTrackColor: kInActiveTrackColor,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      thumbColor: kThumbColor,
                      overlayColor: kThumbOverlayColor,
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: weight.toDouble(),
                        min: 20.0,
                        max: 100.0,
                        onChanged: (double newValue) {
                          setState(() {
                            weight = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          // Age Section
          Expanded(
            child: reusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Age',
                        style: kLebelTextStyle,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              ' years',
                              style: kLebelTextStyle,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kActiveTrackColor,
                      inactiveTrackColor: kInActiveTrackColor,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      thumbColor: kThumbColor,
                      overlayColor: kThumbOverlayColor,
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: age.toDouble(),
                        min: 10.0,
                        max: 80.0, 
                        onChanged: (double newValue) {
                          setState(() {
                            age = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),

          // This is the privious code for the floating buttons

          // Expanded(
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: reusableCard(
          //           colour: kActiveCardColour,
          //           cardChild: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Text(
          //                 'WEIGHT',
          //                 style: kLebelTextStyle,
          //               ),
          //               Text(
          //                 weight.toString(),
          //                 style: kNumberTextStyle,
          //               ),
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   FloatingActionButton(
          //                     onPressed: () {
          //                       setState(() {
          //                         weight--;
          //                       });
          //                     },
          //                     backgroundColor: Color(0xFF4C4F5E),
          //                     child: Icon(FontAwesomeIcons.minus),
          //                     foregroundColor: Colors.white,
          //                   ),
          //                   SizedBox(
          //                     width: 10.0,
          //                   ),
          //                   FloatingActionButton(
          //                     onPressed: () {
          //                       setState(() {
          //                         weight++;
          //                       });
          //                     },
          //                     backgroundColor: Color(0xFF4C4F5E),
          //                     child: Icon(FontAwesomeIcons.plus),
          //                     foregroundColor: Colors.white,
          //                   ),
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       Expanded(
          //         child: reusableCard(
          //           colour: kActiveCardColour,
          //           cardChild: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Text(
          //                 'AGE',
          //                 style: kLebelTextStyle,
          //               ),
          //               Text(
          //                 age.toString(),
          //                 style: kNumberTextStyle,
          //               ),
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   FloatingActionButton(
          //                     onPressed: () {
          //                       setState(() {
          //                         age--;
          //                       });
          //                     },
          //                     backgroundColor: Color(0xFF4C4F5E),
          //                     child: Icon(FontAwesomeIcons.minus),
          //                     foregroundColor: Colors.white,
          //                   ),
          //                   SizedBox(
          //                     width: 10.0,
          //                   ),
          //                   FloatingActionButton(
          //                     onPressed: () {
          //                       setState(() {
          //                         age++;
          //                       });
          //                     },
          //                     backgroundColor: Color(0xFF4C4F5E),
          //                     child: Icon(FontAwesomeIcons.plus),
          //                     foregroundColor: Colors.white,
          //                   ),
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          //Calcluate Button and reset button

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //reset
              GestureDetector(
                onTap: () {
                  InputPage();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[300],
                    borderRadius: BorderRadius.only(
                      bottomLeft: kRadiusBtn,
                      topLeft: kRadiusBtn,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 15.0),
                  height: kBottomBarheight,
                  child: Center(
                    
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Reset',
                        style: kCalculateBtnStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),

              //calculate
              GestureDetector(
                onTap: () {
                  CalculatorBrain calc =
                      CalculatorBrain(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResult(),
                        interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kBottomContainerColor,
                    borderRadius: BorderRadius.only(
                      topRight: kRadiusBtn,
                      bottomRight: kRadiusBtn,
                    ),
                  ),
                  margin: EdgeInsets.only(right: 15.0),
                  padding: EdgeInsets.only(right: 15.0),
                  height: kBottomBarheight,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        ' Calculate',
                        style: kCalculateBtnStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
