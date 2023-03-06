import 'package:flutter/material.dart';
import 'intro.dart';
import 'SecondRoute.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/images/logo.png'),
            Intro(),
            ElevatedButton(
              child: const Text('رقم الهوية'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
