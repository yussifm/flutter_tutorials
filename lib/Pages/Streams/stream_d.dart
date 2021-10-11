import 'dart:async';

import 'package:flutter/material.dart';

class ColorStream {
  late Stream colorStream;
  Stream<Color> getColors() async* {
    final List<Color> colors = [
      Colors.blueGrey,
      Colors.amberAccent,
      Colors.deepPurpleAccent,
      Colors.lightBlueAccent,
      Colors.tealAccent
    ];
    yield* Stream.periodic(Duration(seconds: 1), (int t) {
      int index = t % 5;
      return colors[index];
    });
  }
}

class NumberStream {
  StreamController<int> controller = new StreamController<int>();

  addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  close() {
    controller.close();
  }
}
