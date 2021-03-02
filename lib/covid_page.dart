import 'package:covid_risk_factor_calculator/results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

double roundDouble(double value, int places) {
  double mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

class CovidPage extends StatefulWidget {
  @override
  _CovidPageState createState() => _CovidPageState();
}

class _CovidPageState extends State<CovidPage> {
  double temp = 98.6;
  bool dryCough = false;
  bool tasteSmell = false;
  bool fatigue = false;
  bool nauseaVomiting = false;

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
                        Text(
                          dryCough.toString(),
                          style: kBoolTextStyle,
                        ),
                        SizedBox(
                          height: 45.0,
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
                        Text(
                          tasteSmell.toString(),
                          style: kBoolTextStyle,
                        ),
                        SizedBox(
                          height: 45.0,
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
                        Text(
                          fatigue.toString(),
                          style: kBoolTextStyle,
                        ),
                        SizedBox(
                          height: 45.0,
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
                        Text(
                          nauseaVomiting.toString(),
                          style: kBoolTextStyle,
                        ),
                        SizedBox(
                          height: 45.0,
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
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage()));
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: kNextButtonTextStyle,
                ),
              ),
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              //padding: EdgeInsets.only(bottom: 20.0), (only add if necessary on an actual device.
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
