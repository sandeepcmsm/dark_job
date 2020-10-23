import 'package:flutter/material.dart';

class TextTwo extends StatelessWidget {
  final String data;
  final Color color;

  const TextTwo(this.data, {Key key, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: 16.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          color: color),
      textAlign: TextAlign.start,
    );
  }
}
