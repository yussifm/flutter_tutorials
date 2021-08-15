import 'package:flutter/material.dart';
import 'package:flutter_totu/Components/ReUserbleCard.dart';
import 'package:flutter_totu/Utility/Constants.dart';

class Result extends StatelessWidget {
  Result(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Results",
                style: KResultText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUserableCard(
              boxColour: KActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: KRTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KRNumText,
                  ),
                  Text(
                    interpretation,
                    style: KLabelTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: KBottomColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: KBottomHeight,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Re-Calculate",
                  style: KLabelTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
