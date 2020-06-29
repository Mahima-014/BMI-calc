import 'package:flutter/material.dart';
import 'constants.dart';
import 'resuable_card.dart';
import 'bottom_button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.getResult,@required this.getReviews,@required this.getInterpretation});
  final String getResult;
  final String getReviews;
  final String getInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding:EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTittleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    getReviews.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    getResult,
                    style:kBMITextStyle ,
                  ),
                  Text(
                    getInterpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTittle: 'RECALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
