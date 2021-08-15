import 'package:flutter/material.dart';
import 'package:flutter_totu/Utility/Constants.dart';

class RoundCustButton extends StatelessWidget {
  RoundCustButton({required this.icon, required this.onPressFunc});
  final IconData icon;
  final onPressFunc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RawMaterialButton(
        elevation: 0.0,
        child: Icon(
          icon,
        ),
        onPressed: onPressFunc,
        shape: CircleBorder(),
        fillColor: KFillcolor,
        constraints: BoxConstraints.tightFor(
          width: 50.0,
          height: 50.0,
        ),
      ),
    );
  }
}
