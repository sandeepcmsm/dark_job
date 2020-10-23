import 'package:flutter/material.dart';

class TextThree extends StatelessWidget {
  final String data;
  final Color color;

  const TextThree(this.data, {Key key, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: 12.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          color: color),
      textAlign: TextAlign.start,
    );
  }
}
