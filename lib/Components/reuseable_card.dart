import 'package:flutter/material.dart';
class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.Colour, required this.childCard, this.onPress});
  final Color Colour;
  final Widget childCard;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        decoration: BoxDecoration(
          color: Colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
