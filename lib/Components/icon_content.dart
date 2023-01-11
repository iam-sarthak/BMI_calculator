import 'package:flutter/material.dart';
import 'package:bmi_calulator/constants.dart';

class iconContent extends StatelessWidget {
  iconContent({required this.textstring, required this.iconname});
  final String textstring;
  final IconData iconname;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconname,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          textstring,
          style: kLablestyleText,
        )
      ],
    );
  }
}
