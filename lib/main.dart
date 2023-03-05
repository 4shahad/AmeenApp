import 'dart:html';
import 'MyWidget.dart';
import 'package:flutter/material.dart';
import 'intro.dart';
import 'login.dart';
import 'createAccount.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("مرحبا بك"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 72, 157, 142),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/images/logo.png'),
              Intro(),
              Login(),
              CreateAccount(),
              MyWidget(),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
