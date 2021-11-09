import 'package:flutter/material.dart';

class ShapeAnimation extends StatefulWidget {
  ShapeAnimation({Key? key}) : super(key: key);

  @override
  _ShapeAnimationState createState() => _ShapeAnimationState();
}

class _ShapeAnimationState extends State<ShapeAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  double pos = 0.0;
  late AnimationController controller;

  void moveBall() {
    setState(() {
      pos = animation.value;
    });
  }

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = Tween<double>(begin: 0, end: 200).animate(controller)
      ..addListener(() {
        moveBall();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Controller"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                controller.reset();
                controller.forward();
              },
              icon: Icon(Icons.run_circle_rounded))
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            child: Ball(),
            left: pos,
            top: pos,
          )
        ],
      ),
    );
  }
}

class Ball extends StatelessWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration:
          BoxDecoration(color: Colors.deepPurpleAccent, shape: BoxShape.circle),
    );
  }
}
