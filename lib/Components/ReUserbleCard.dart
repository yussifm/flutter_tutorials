import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReUserableCard extends StatelessWidget {
  ReUserableCard({required this.cardChild, required this.boxColour});
  final Widget cardChild;
  final Color boxColour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: boxColour,
      ),
      child: cardChild,
    );
  }
}
