import 'package:flutter/material.dart';
import 'package:plagiarismchecker/Pages/about_page.dart';
import 'package:plagiarismchecker/Pages/confirming_page.dart';
import 'package:plagiarismchecker/Pages/download_page.dart';
import 'package:plagiarismchecker/Pages/home_page.dart';
import 'package:plagiarismchecker/Pages/check_page.dart';
import 'package:plagiarismchecker/Pages/result_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Roboto'
          )
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage (),
    );
  }
}

