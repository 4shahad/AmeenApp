import 'package:flutter/material.dart';
import 'package:ameen_app/responsive.dart';

class Complaints extends StatelessWidget {
  const Complaints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/backgroundOfcomplaints.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        " اختر نوع البلاغ",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(98, 142, 128, 1)),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Responsive(
                    smallScreen: mobileSizeComplaints(),
                    mediumScreen: tabletSizeComplaints(),
                    largeScreen: tabletSizeComplaints(),
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        child: Text("السابق"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            foregroundColor: Color.fromARGB(255, 24, 86, 67),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            textStyle: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class tabletSizeComplaints extends StatelessWidget {
  const tabletSizeComplaints({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          // يسار
          children: [
            MyButton(
              width: 200,
              height: 50,
              title: "بلاغات سرقة مركبة",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "بلاغات جرائم معلوماتية",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "بلاغات الابتزاز والتحرش",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "تسجيل بيانات لقطة",
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(width: 20),
        Column(
          // يمين
          children: [
            MyButton(
              width: 200,
              height: 50,
              title: "بلاغات فقدان أمتعة أو ممتلكات",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "بلاغات فقدان لوحة مركبة",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "تمرير معلومات أمنية",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "بلاغ عن تابع متغيب",
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 100),
      ],
    );
  }
}

class mobileSizeComplaints extends StatelessWidget {
  const mobileSizeComplaints({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          // يسار
          children: [
            MyButton(
              width: 150,
              height: 50,
              title: "بلاغات سرقة مركبة",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "بلاغات جرائم معلوماتية",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "بلاغات الابتزاز والتحرش",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "تسجيل بيانات لقطة",
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(width: 20),
        Column(
          // يمين
          children: [
            MyButton(
              width: 150,
              height: 50,
              title: "بلاغات فقدان أمتعة أو ممتلكات",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "بلاغات فقدان لوحة مركبة",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "تمرير معلومات أمنية",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "بلاغ عن تابع متغيب",
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 150),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.onPressed,
  });

  final double width, height;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          child: Text(title, textAlign: TextAlign.center),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 24, 86, 67),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              )),
        ),
      ),
    );
  }
}
