import 'package:ameen_app/intro.dart';
import 'package:ameen_app/main.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:60),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context){
        return FirstRoute();
      }));

    });
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/images/back.jpeg"),
                fit: BoxFit.cover)),
        child: Center(
          child:Image(
            image: AssetImage(("asset/images/logo.png"),)) ,),
      ),
    );
  }
}