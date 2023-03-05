import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text( "أختر طريقة تسجيل الدخول ",style: TextStyle(color: Color.fromARGB(255, 57, 57, 57),fontSize: 18 ,fontStyle: FontStyle.italic),)],
    );
  }
}
