import 'package:flutter/material.dart';
import 'constants.dart';

class IconColumn extends StatelessWidget {
  IconColumn({required this.icon, required this.lebel,required this.iconcolor});

  final IconData icon;
  final String lebel;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40.0,
            color: iconcolor,
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            lebel,
            style: kLebelTextStyle,
          )
        ],
      ),
    );
  }
}
