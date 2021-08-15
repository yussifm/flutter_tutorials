import 'package:flutter/material.dart';
import 'package:flutter_totu/Components/IconContent.dart';
import 'package:flutter_totu/Components/ReUserbleCard.dart';
import 'package:flutter_totu/Components/RoundIconButton.dart';
import 'package:flutter_totu/Pages/Bmi/BmiResult_page.dart';
import 'package:flutter_totu/Service/BmiCalculatorBrain.dart';
import 'package:flutter_totu/Utility/Constants.dart';

enum Gender {
  Male,
  Female,
}

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  Gender selectedGender = Gender.Male;
  int height = 180;
  int weight = 30;
  int age = 23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: ReUserableCard(
                    boxColour: selectedGender == Gender.Male
                        ? KInactiveCardColor
                        : KActiveCardColor,
                    cardChild: IconContent(
                        icon: Icons.male_rounded,
                        title: "Male",
                        onGestTap: () {
                          setState(() {
                            selectedGender = Gender.Male;
                          });
                        }),
                  ),
                ),
                Expanded(
                  child: ReUserableCard(
                    boxColour: selectedGender == Gender.Female
                        ? KInactiveCardColor
                        : KActiveCardColor,
                    cardChild: IconContent(
                      icon: Icons.female_rounded,
                      title: "Female",
                      onGestTap: () {
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ReUserableCard(
              boxColour: KActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    textAlign: TextAlign.center,
                    style: KLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: KNumTextStyle,
                      ),
                      Text(
                        "CM",
                        style: KLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: KBottomColor,
                        overlayColor: KBottomTColor,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey[700],
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                          elevation: 10.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        )),
                    child: Slider(
                      label: height.toString(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                      min: 120.0,
                      max: 220.0,
                      value: height.toDouble(),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: ReUserableCard(
                    boxColour: KActiveCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          "Weight",
                          style: KLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: KNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundCustButton(
                              icon: Icons.horizontal_rule_rounded,
                              onPressFunc: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            RoundCustButton(
                              icon: Icons.add_rounded,
                              onPressFunc: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReUserableCard(
                    boxColour: KActiveCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          "Age",
                          style: KLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: KNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundCustButton(
                              icon: Icons.horizontal_rule_rounded,
                              onPressFunc: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            RoundCustButton(
                              icon: Icons.add_rounded,
                              onPressFunc: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
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
                  BmiCalBrain calc =
                      BmiCalBrain(height: height, weight: weight);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        bmiResult: calc.calculateResult(),
                        interpretation: calc.getInterpretation(),
                        resultText: calc.resultText(),

                      ),
                    ),
                  );
                },
                child: Text(
                  "Calculate",
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
