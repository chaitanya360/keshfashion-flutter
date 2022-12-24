import 'package:apitutorials/home_screen.dart';
import 'package:apitutorials/jobcard_details.dart';
import 'package:apitutorials/practice.dart';
import 'package:apitutorials/table.dart';
import 'package:flutter/material.dart';
import './signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: JobcardDetailScreen(
        id: 1,
      ),
    );
  }
}
