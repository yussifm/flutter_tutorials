import 'package:flutter/material.dart';
import 'package:flutter_totu/Pages/Animation_page/my_anim.dart';

class MyAnima extends StatefulWidget {
  const MyAnima({Key? key}) : super(key: key);

  @override
  _MyAnimaState createState() => _MyAnimaState();
}

class _MyAnimaState extends State<MyAnima> {
  @override
  Widget build(BuildContext context) {
    return Material(child: MyAnimationH());
  }
}
