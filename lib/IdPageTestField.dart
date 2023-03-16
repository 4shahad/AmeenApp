import 'package:flutter/material.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'OTP.dart';

class IdPage extends StatelessWidget {
  const IdPage({super.key});
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
              DropShadowImage(
                offset: Offset(10, 10),
                scale: 1,
                blurRadius: 12,
                borderRadius: 20,
                image: Image.asset(
                  'asset/images/id.jpeg',
                ),
              ),
              SizedBox(height: 25),
              Text(
                "أدخل رقم الهوية",
                style: TextStyle(
                  color: Color.fromRGBO(98, 142, 128, 1),
                  fontSize: 24,
                ),
              ),
              Text(
                "ستصل لك رسالة التحقق برقم الجوال المربوط بأبشر",
                style: TextStyle(
                  color: Color.fromARGB(255, 74, 73, 73),
                  fontSize: 12,
                ),
              ),
              TextFormField(
              textAlign: TextAlign.left,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'الرجاء إدخال رقم الهوية',
                  labelText: 'رقم الهوية',
                ),
              ),
              ElevatedButton(
                child: Text('إدخال'),
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
                    MaterialPageRoute(builder: (context) => const OTP()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
