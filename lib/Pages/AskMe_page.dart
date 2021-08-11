import 'dart:math';

import 'package:flutter/material.dart';

class Ask extends StatefulWidget {
  const Ask({Key? key}) : super(key: key);

  @override
  _AskState createState() => _AskState();
}

class _AskState extends State<Ask> {
  int ballNum = 1;

  void ballGene() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.greenAccent,
      ),
      backgroundColor: Colors.green[100],
      body: Column(
        children: <Widget>[
          Expanded(
              child: TextButton(
            onPressed: () {
              ballGene();
            },
            child: Image.asset("images/ball$ballNum.png"),
          ))
        ],
      ),
    );
  }
}
