import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.BtnText,required this.onTap});
  final VoidCallback onTap;
  final String BtnText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(BtnText, style: kLargeButtonTextStyle)),
        width: double.infinity,
        color: kBottomconainercolor,
        height: kBottomcontainerwidth,
        margin: EdgeInsets.only(top: 20),
      ),
    );
  }
}
