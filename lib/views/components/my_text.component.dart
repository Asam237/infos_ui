import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyText extends StatefulWidget {
  final String? variant;
  final String? text;
  final bool? centered;

  MyText({this.variant, required this.text, this.centered});

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    if (this.widget.variant == "TITLE") {
      return Text(
        this.widget.text.toString(),
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Color(0xffeeedf2)),
        textAlign: this.widget.centered == true ? TextAlign.center : null,
      );
    }
    if (this.widget.variant == "SUBTITLE") {
      return Text(
        this.widget.text.toString(),
        style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xff999caf),
            fontSize: 15.0),
      );
    }
    if (this.widget.variant == "MENU") {
      return Text(
        this.widget.text.toString(),
        style: TextStyle(
            fontWeight: FontWeight.w700, color: Colors.white, fontSize: 16.0),
      );
    }
    return Text(this.widget.text.toString());
  }
}
