import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  void generateNum() => {
        setState(() {
          leftDiceNum = Random().nextInt(6) + 1;
          rightDiceNum = Random().nextInt(6) + 1;
        })
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice"),
        elevation: 3.0,
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  generateNum();
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNum.png'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  generateNum();
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNum.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
