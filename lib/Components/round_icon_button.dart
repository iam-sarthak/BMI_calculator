import 'package:flutter/material.dart';
import 'package:bmi_calulator/constants.dart';

class RoundIconBotton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPressed;
  RoundIconBotton({this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
