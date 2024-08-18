import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  String text;
  BorderRadiusGeometry radius;
  TextStyle style;
  Color color;
  customButton(
      {required this.radius,
      required this.text,
      required this.color,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(borderRadius: radius),
        ),
        child: Center(child: Text(text, style: style)),
      ),
    );
  }
}
