import 'package:covid_risk_factor_calculator/constants.dart';
import 'package:covid_risk_factor_calculator/home_screen.dart';
import 'package:covid_risk_factor_calculator/input_page.dart';
import 'package:covid_risk_factor_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'botton_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID EXPOSURE CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'LOW',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '15.4',
                    style: kCovidTextStyle,
                  ),
                  Text(
                    'Your COVID-19 Risk Factor is Low you can head out to your work.',
                    style: kMessageTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            buttonTitle: 'TAKE ANOTHER TEST',
          ),
        ],
      ),
    );
  }
}
