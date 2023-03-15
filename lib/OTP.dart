import 'package:flutter/material.dart';
import 'pageOfServices.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  OTPState createState() => OTPState();
}

class OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
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
              SizedBox(
                height: 30,
              ),
              Container(
                  width: 100,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(5, 161, 169, 166),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'asset/images/otp.png',
                    width: 400,
                    height: 500,
                  )),
              SizedBox(
                height: 24,
              ),
              Text(
                'التحقق',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "الرجاء ادخال رمز التحقق المرسل لرقم جوالك",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(first: true, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: true),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PageOfServices()),
                          );
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 24, 86, 67)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'تحقق',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "لم يصلك الرمز التحقق؟",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "إعادة الارسال",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 24, 86, 67),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({bool? first, last}) {
    return Container(
      height: 60,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2, color: Color.fromARGB(255, 24, 86, 67)),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
