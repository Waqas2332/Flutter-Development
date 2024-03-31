import 'package:flutter/material.dart';
import 'package:practice_color_modes/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  String mode = "light";

  void changeState() {
    setState(() {
      if (mode == "light") {
        mode = "dark";
      } else {
        mode = "light";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(),
      home: Homepage(mode, changeState),
    );
  }
}
