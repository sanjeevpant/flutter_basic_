import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIconRoundWidget extends StatelessWidget {
  Color bgColor;
  Color fgColor;
  IconData icon;
  double size;

  AppIconRoundWidget({
  required this.icon,
    this.bgColor = Colors.white,
    this.fgColor = Colors.black,
    this.size = 40
});
   @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size ,
      decoration: BoxDecoration(
          shape: .circle,
          color: bgColor
      ),
      child: Center(
        child: Icon(icon, color: fgColor),
      ),
    );
  }
}