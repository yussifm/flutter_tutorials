import 'package:flutter/material.dart';
import 'package:flutter_totu/Pages/AskMe_page.dart';
import 'package:flutter_totu/Pages/Bmi/Bmi_page.dart';
import 'package:flutter_totu/Pages/Custom_paint/Custom_paint.dart';
import 'package:flutter_totu/Pages/Dice_page.dart';
import 'package:flutter_totu/Pages/ProviderExample/provider_page.dart';
import 'package:flutter_totu/Pages/mi_page.dart';
import 'package:flutter_totu/Utility/Constants.dart';

import 'Quiz_page.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Coded Studios',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              letterSpacing: 5.0,
            ),
          ),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
        ),
        body: ListView(
        children: [
          Text(
            "Projects",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
            textAlign: TextAlign.center,
          ),
          linkButtons(
              onPress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MiPage()));
              },
              title: "MiCard App",
              color: Colors.indigo),
          linkButtons(
              onPress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Dice()));
              },
              title: "Dice App",
              color: Colors.green),
          linkButtons(
              onPress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ask()));
              },
              title: "Ask Me Anything Game",
              color: Colors.yellow[800]),
          linkButtons(
              onPress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quiz()));
              },
              title: "Quiz App",
              color: Colors.pink),
          linkButtons(
              onPress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BMI()));
              },
              title: "BMI Calculator",
              color: Colors.greenAccent),

                linkButtons(
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Custom_paint()));
              },
              title: "Custom Painter",
              color: Colors.pink[900]),
          linkButtons(
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProviderExample()));
              },
              title: "Provider EXample App",
              color: Colors.lime),
        ],
      ),
    );
  }

  Container linkButtons({onPress, title, color}) => Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
        child: TextButton(
          onPressed: onPress,
          child: Text(
            title,
            style: KLabelTextStyle,
          ),
        ),
      );
}
