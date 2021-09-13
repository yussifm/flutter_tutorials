import 'package:flutter/material.dart';
import 'package:flutter_totu/Pages/Custom_paint/start.dart';

class Custom_paint extends StatefulWidget {
  Custom_paint({Key? key}) : super(key: key);

  @override
  _Custom_paintState createState() => _Custom_paintState();
}

class _Custom_paintState extends State<Custom_paint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Star(
        color: Colors.pink,
        size: 60.0,
      )),
    );
  }
}
