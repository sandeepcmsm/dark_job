import 'package:dark_job/screen_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF22242C),
    ));

    return MaterialApp(
      title: 'Dark Job',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF22242C), elevation: 0),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScreenOne(),
    );
  }
}
