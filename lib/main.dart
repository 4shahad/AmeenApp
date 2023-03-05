

import 'package:flutter/material.dart';
import 'intro.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/images/logo.png'),
              Intro(),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
