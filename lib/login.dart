import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 100,
          margin: EdgeInsets.all(10),
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(hintText: "ID NUMBER"),
          ),
        ),
        Container(
          height: 30,
          width: 100,
          margin: EdgeInsets.all(10),
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(hintText: 'VALIDATION NUMBER'),
          ),
        ),
        Text('Reset password'),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () => {print("Sign in")},
            child: Text("Sign in"))
      ],
    );
  }
}
