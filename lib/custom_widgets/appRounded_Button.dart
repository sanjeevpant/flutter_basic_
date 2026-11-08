
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoundedButton extends StatelessWidget{
  String title;
  double mWidth;
  Color bgColor;
  Color fgColor;
  IconData? icon;
  VoidCallback onTap;

  AppRoundedButton({
    required this.title,
    this.mWidth = double.infinity,
    this.bgColor = Colors.amber,
    this.fgColor = Colors.white,
    this.icon,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            foregroundColor: fgColor,
            maximumSize: Size(mWidth, 40),
            minimumSize: Size(mWidth, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11)
          )
        ),
        child: icon != null ? Row(
          children: [
            Icon(icon),
            SizedBox(width: 11),
            Text(title)
          ],
        ) : Text(title)
    );
  }
}