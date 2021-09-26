import 'package:flutter/material.dart';
import 'dart:math';
import 'package:hello/pages/game/game_page.dart';
import 'package:hello/fr.dart';
import 'package:hello/HW.dart';
import 'package:hello/pages/game/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontSize: 14.0),
          ),
        ),
        home: LoginPage());
  }
}
