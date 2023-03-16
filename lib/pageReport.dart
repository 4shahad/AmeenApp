import 'package:flutter/material.dart';


class reportAsk extends StatefulWidget {
  const reportAsk({super.key});

  @override
  State<reportAsk> createState() => _reportAskState();
}

class _reportAskState extends State<reportAsk> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'بلاغ اضافة لقطة بالخزنة',
                      style: TextStyle(
                          color: Color.fromRGBO(98, 142, 128, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'تقديم البلاغ',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding:  EdgeInsets.all(10),
                  child: TextField(
                    controller: typeController,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'نوع اللقطة',
                    ),
                  ),
                ),
                Container(
                  padding:  EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    controller: numberController,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'عددها',
                    ),
                  ),
                ),
                  Container(
                  padding:  EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: false,
                    controller: nameController,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'اسم اللقطة',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('تقديم البلاغ'),
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
                          print(typeController.text);
                          print(numberController.text);
                          print(nameController.text);
                        },
                      )
                  ),
                  
                ),
               Padding(        padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('الرجوع'),
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
                       Navigator.pop(context);
                        },
                      )
                  ),
                  
                ),
              ],
            )),
      ),
    );
  }
}