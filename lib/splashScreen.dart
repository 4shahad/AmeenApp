import 'package:ameen_app/main.dart';
import 'package:flutter/material.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  double imageOpacity= 1.0;
int numberOfLopps = 7;

  @override
  void initState() {

    hidenOrShowImage();
    Future.delayed(Duration(seconds:10),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context){
        return FirstRoute();
      }));

    });
    
    super.initState();
  }

hidenOrShowImage(){
  setState(() {
    if(imageOpacity ==0){
      imageOpacity=1;
    }
    else{
      imageOpacity=0;
    }
  });

  if (numberOfLopps > 0) {
  Future.delayed(Duration(seconds: 1),(){
    hidenOrShowImage();
  });
  numberOfLopps--;
  }
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
          child:AnimatedOpacity(
            duration: Duration(seconds: 1), 
            opacity: imageOpacity,
            child: Image(
            image: AssetImage(("asset/images/logo.png"),)),
            )
            ),
      ),
    );
  }
}