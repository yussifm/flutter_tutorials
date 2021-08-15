import 'package:flutter/material.dart';
import 'package:flutter_totu/Utility/Constants.dart';

class IconContent extends StatelessWidget {
  IconContent(
      {required this.icon, required this.title, required this.onGestTap});

  final IconData icon;
  final String title;
  final onGestTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onGestTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 100.0,
            color: Colors.white,
          ),
          Text(
            title,
            style: KLabelTextStyle,
          ),
        ],
      ),
    );
  }
}
