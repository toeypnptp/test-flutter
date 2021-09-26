import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  int Number = Random().nextInt(100);
  runApp(
    Center(
      child: Text(
        '$Number',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 100.0, color: Colors.lightGreenAccent),
      ),
    ),
  );
}