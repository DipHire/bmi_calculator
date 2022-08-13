import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  reusableCard({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.white),boxShadow: [
        BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            offset: Offset(0, -3))
      ], color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
