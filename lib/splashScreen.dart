import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context){
        return Login();
      }));

    });
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Container(
        child: Center(
          child:Image(
            image: AssetImage(
              ("images/logo.png"),
            )) ,),
      ),
    );
  }
}