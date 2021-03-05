import 'package:covid_risk_factor_calculator/results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'const_and_var.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'botton_button.dart';
import 'round_icon_button.dart';
import 'brain.dart';

double roundDouble(double value, int places) {
  double mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

class CovidPage extends StatefulWidget {
  @override
  _CovidPageState createState() => _CovidPageState();
}

class _CovidPageState extends State<CovidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COVID EXPOSURE CALCULATOR',
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'TEMPERATURE',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        temp.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        '°F',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: temp,
                      min: 94.0,
                      max: 108.0,
                      onChanged: (double newValue) {
                        setState(() {
                          temp = roundDouble(newValue, 1);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          'DRY COUGH',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          dryCough.toString().toUpperCase(),
                          style: kBoolTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.solidArrowAltCircleDown,
                              onPressed: () {
                                setState(() {
                                  dryCough = false;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.solidArrowAltCircleUp,
                              onPressed: () {
                                setState(() {
                                  dryCough = true;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          'TASTE & SMELL',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          tasteSmell.toString().toUpperCase(),
                          style: kBoolTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.solidArrowAltCircleDown,
                              onPressed: () {
                                setState(() {
                                  tasteSmell = false;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.solidArrowAltCircleUp,
                              onPressed: () {
                                setState(() {
                                  tasteSmell = true;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          'FATIGUE',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          fatigue.toString().toUpperCase(),
                          style: kBoolTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.solidArrowAltCircleDown,
                              onPressed: () {
                                setState(() {
                                  fatigue = false;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.solidArrowAltCircleUp,
                              onPressed: () {
                                setState(() {
                                  fatigue = true;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          'NAUSEA & VOMITING',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          nauseaVomiting.toString().toUpperCase(),
                          style: kBoolTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.solidArrowAltCircleDown,
                              onPressed: () {
                                setState(() {
                                  nauseaVomiting = false;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.solidArrowAltCircleUp,
                              onPressed: () {
                                setState(() {
                                  nauseaVomiting = true;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              Brain calc = Brain(
                  age: age,
                  weight: weight,
                  soreThroat: soreThroat,
                  height: height,
                  temp: temp,
                  diarrhea: diarrhea,
                  dryCough: dryCough,
                  tasteSmell: tasteSmell,
                  nauseaVomiting: nauseaVomiting,
                  fatigue: fatigue);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            testResult: calc.calculateRisk(),
                            resultMessage: calc.getMessage(),
                            resultText: calc.getResult(),
                          )));
            },
            buttonTitle: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
