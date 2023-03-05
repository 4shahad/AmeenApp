import 'package:flutter/material.dart';


class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      ElevatedButton(
        onPressed: () => {
          setState(
            () {
        number ++;
      },
      )
      },
       child: Icon(Icons.plus_one)),
       Text("total items: $number")
    ],
    );
  }
}