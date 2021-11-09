import 'package:flutter/material.dart';

class MyAnimationH extends StatefulWidget {
  MyAnimationH({Key? key}) : super(key: key);

  @override
  _MyAnimationHState createState() => _MyAnimationHState();
}

class _MyAnimationHState extends State<MyAnimationH> {
  final List<Color> colors = [
    Colors.redAccent,
    Colors.greenAccent,
    Colors.yellowAccent,
    Colors.lightBlueAccent,
    Colors.pinkAccent
  ];

  final List<double> sizes = [100, 125, 150, 175, 200];
  final List<double> tops = [0, 50, 100, 150, 200];
  int itera = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animation"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  itera < colors.length - 1 ? itera++ : itera = 0;
                  setState(() {
                    itera = itera;
                  });
                },
                icon: Icon(Icons.run_circle_rounded))
          ],
        ),
        body: Center(
          child: AnimatedContainer(
            width: 100,
            height: 100,
            duration: Duration(seconds: 1),
            color: colors[itera],
          ),
        ));
  }
}
