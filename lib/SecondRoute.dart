import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('رقم الهوية'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 72, 157, 142),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/images/id.jpeg'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('تحقق'),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
