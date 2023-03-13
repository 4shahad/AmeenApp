import 'package:flutter/material.dart';
import 'IdPageTestField.dart';
import 'intro.dart';

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
              ElevatedButton.icon(
                icon: Icon(FluentSystemIcons.ic_fluent_person_board_filled,
                    color: Color.fromRGBO(255, 255, 255, 1)),
                label: const Text(
                  'طـلـب خـدمـة ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IdPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(18.0),
                    fixedSize: Size(400, 60),
                    textStyle: TextStyle(fontSize: 16, color: Colors.white),
                    primary: Color.fromRGBO(50, 119, 73, 1),
                    onPrimary: Colors.black,
                    elevation: 7,
                    shadowColor: Color.fromARGB(255, 99, 98, 98),
                    side: BorderSide(
                        color: Color.fromARGB(221, 180, 180, 180), width: 1),
                    shape: StadiumBorder()),
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
