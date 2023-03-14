import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text( "جــهـاز أمــيــن",style: TextStyle(color: Color.fromRGBO(98, 142, 128, 1),fontSize: 24 ,fontWeight: FontWeight.bold),),
      Text(" :جهاز الخدمة الذاتية أمين الذي يقدم لك ",style: TextStyle(color:Color.fromARGB(255, 74, 73, 73))),
      Text("خدمة تقديم بلاغات الفقدان واللقطه وبلاغات أخرى ",style: TextStyle(color:Color.fromARGB(255, 74, 73, 73) ))],
    );
  }
}
