import 'package:flutter/material.dart';

class TextBase extends StatelessWidget {
  final String data;
  final Color color;
  final double fontSize;
  final FontStyle fontStyle;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final double height;
  final int maxLines;

  const TextBase(this.data,
      {Key key,
      this.color = Colors.white,
      this.fontSize,
      this.fontStyle,
      this.fontWeight,
      this.height,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: fontSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          color: color),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
