import 'package:flutter/material.dart';

import 'Pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromRGBO(6, 7, 23, 1),
        primaryColor: Color.fromRGBO(6, 8, 23, 1),
      ),
      home: ImageDemo(),
    );
  }
}
