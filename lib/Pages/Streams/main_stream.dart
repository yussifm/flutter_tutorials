import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'stream_d.dart';

class StreamHomePage extends StatefulWidget {
  StreamHomePage({Key? key}) : super(key: key);

  @override
  _StreamHomePageState createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  //ColorStream class
  Color bgColor = Colors.orangeAccent;
  late ColorStream colorStream;

  //NumberStream class
  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  //ColorStream class
  chageColor() async {
    await for (var eventcolor in colorStream.getColors()) {
      setState(() {
        bgColor = eventcolor;
      });
    }

    //  Or
    // colorStream.getColors().listen((eventColor) {
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // });
  }

  @override
  void initState() {
    //ColorStream class
    colorStream = new ColorStream();
    chageColor();

    //NumberStream class
    numberStream = new NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream'),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: bgColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Changing the backgroundColor with stream")),
            Center(
                child:
                    Text("Changing and Generating Random number with stream")),
            Center(
              child: Text(lastNumber.toString(),
                  style: TextStyle(
                    fontSize: 30.0,
                  )),
            ),
            ElevatedButton(
              onPressed: () {
                addRandomNumber();
              },
              child: Text('New Random Number'),
            ),
          ],
        ),
      ),
    );
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(101);
    numberStream.addNumberToSink(myNum);
  }
}
