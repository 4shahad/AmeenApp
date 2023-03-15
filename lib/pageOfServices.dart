

import 'package:ameen_app/responsive.dart';
import 'package:flutter/material.dart';

import 'pageOfComplaints.dart';

class PageOfServices extends StatelessWidget {
  const PageOfServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/back.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
            child: Padding(
                padding: EdgeInsets.all(3),
                child: Center(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 60),
                          Text(
                            "الوظائف الرئيسية",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(98, 142, 128, 1)),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "للجهاز",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 74, 73, 73)),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),

                      Responsive(smallScreen: mobileSizeServices(), mediumScreen: tabletSizeServices(), largeScreen: tabletSizeServices(),),
                    ],
                  ),
                )))));
  }
}






class tabletSizeServices extends StatelessWidget {
  const tabletSizeServices({
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
              title: "استعلام عن معاملة أو قضية",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "تسجيل مخالفة ذوق عام",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "تقييم خدمة أمنية قدمت لك",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "أصدقاء الأمن",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "طلب صحيفة خلو سوابق",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "الاستفسار عن رخصة سلاح",
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
              title: "تقديم بلاغ",
              onPressed: () {
                Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Complaints()),
                );
              },
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "تسجيل كفالة لموقوف",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "تسجيل مخالفة نظام الحراسات الأمنية",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "تسجيل موعد لعمدة الحي",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "الاستعلام عن أقرب مركز شرطة",
              onPressed: () {},
            ),
            MyButton(
              width: 200,
              height: 50,
              title: "طلب اذن إقامة حفل",
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}



class mobileSizeServices extends StatelessWidget {
  const mobileSizeServices({
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
              title: "استعلام عن معاملة أو قضية",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "تسجيل مخالفة ذوق عام",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "تقييم خدمة أمنية قدمت لك",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "أصدقاء الأمن",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "طلب صحيفة خلو سوابق",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "الاستفسار عن رخصة سلاح",
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
              title: "تقديم بلاغ",
              onPressed: () {
                Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Complaints()),
                );
              },
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "تسجيل كفالة لموقوف",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "تسجيل مخالفة نظام الحراسات الأمنية",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "تسجيل موعد لعمدة الحي",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "الاستعلام عن أقرب مركز شرطة",
              onPressed: () {},
            ),
            MyButton(
              width: 150,
              height: 50,
              title: "طلب اذن إقامة حفل",
              onPressed: () {},
            ),
          ],
        ),
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
          child: Text(title, 
          textAlign: TextAlign.center),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 24, 86, 67),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                   fontSize: 14,
              )),
        ),
      ),
    );
  }
}
