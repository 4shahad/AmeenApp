import 'package:ameen_app/OTP.dart';
import 'package:flutter/material.dart';
import 'OTP.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  size: 32,
                  color: Colors.black54,
                ),
              ),
            ),
            Image.asset('asset/images/id.jpeg'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Otp()),
                );
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
