import 'package:flutter/material.dart';
import 'input_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF24232f),
          scaffoldBackgroundColor: Color(0xff2f2e3a)),
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: MyHomePage(),
    );
  }
}
