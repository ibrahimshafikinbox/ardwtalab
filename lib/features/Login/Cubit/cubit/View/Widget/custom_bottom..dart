import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final double height;
  final double width;
  // final Color background;
  final VoidCallback function;
  final String text;
  final bool isUpperCase;
  final double radius;
  final Color textColor;

  const DefaultButton({
    Key? key,
    this.height = 45,
    this.width = double.infinity,
    // this.background = Colors.blue,
    required this.function,
    required this.text,
    this.isUpperCase = false,
    this.radius = 20.0,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: Colors.red[800]),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
