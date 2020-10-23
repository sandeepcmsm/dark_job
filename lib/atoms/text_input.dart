import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final String label;
  final TextEditingController controller;
  final EdgeInsetsGeometry contentPadding;
  final TextInputAction textInputAction;
  final Widget icon;
  final Widget suffixIcon;
  final double fontSize;
  final Color textColor;

  const TextInput(
      {Key key,
      this.hintText,
      this.textColor = Colors.white60,
      this.label,
      this.controller,
      this.contentPadding,
      this.textInputAction,
      this.icon,
      this.fontSize,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: 'Roboto',
      ),
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: contentPadding,
          labelText: label,
          labelStyle: TextStyle(color: Color(0x66FFFFFF), fontSize: fontSize),
          hintStyle: TextStyle(color: Color(0x66FFFFFF), fontSize: fontSize),
          hintText: hintText,
          suffixIcon: suffixIcon,
          icon: icon),
      controller: controller,
      textInputAction: textInputAction,
    );
  }
}
