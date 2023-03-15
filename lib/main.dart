import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'intro.dart';
import 'IdPageTestField.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset('asset/images/logo.png'),
              Spacer(),
              Intro(),
              Column(
                children: [
                  Padding(padding: new EdgeInsets.all(10.0)),
                  Column(
                    children: [
                      ElevatedButton(
                        child: Text('بدء الخدمة'),
                        style: ElevatedButton.styleFrom(
                          elevation: 12.0,
                          padding: EdgeInsets.all(10),
                          primary: Color.fromARGB(255, 24, 86, 67),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontStyle: FontStyle.normal),
                          fixedSize: Size(375, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IdPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(padding: new EdgeInsets.all(10.0)),
                      ElevatedButton(
                        child: Text('الإرشادات '),
                        style: ElevatedButton.styleFrom(
                          elevation: 12.0,
                          padding: EdgeInsets.all(10),
                          primary: Color.fromARGB(255, 24, 86, 67),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontStyle: FontStyle.normal),
                          fixedSize: Size(375, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IdPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(padding: new EdgeInsets.all(10.0)),
                      ElevatedButton(
                        child: Text('أصدقاء الأمن  '),
                        style: ElevatedButton.styleFrom(
                          elevation: 12.0,
                          padding: EdgeInsets.all(10),
                          primary: Color.fromARGB(255, 24, 86, 67),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontStyle: FontStyle.normal),
                          fixedSize: Size(375, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IdPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
