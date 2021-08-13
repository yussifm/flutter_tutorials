import 'package:flutter/material.dart';
import 'package:flutter_totu/Pages/Quiz_page.dart';

import 'Pages/AskMe_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Quiz(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coded Studios'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(image: AssetImage('images/IMG_7004.JPG')),
      ),
    );
  }
}
