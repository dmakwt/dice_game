import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num1 = 1; // 5
  int num2 = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('لعبة النرد'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/dice_$num1.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/dice_$num2.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
            ),
            Container(
              width: 120,
              height: 50,
              child: ElevatedButton(
                child: Text(
                  'Play',
                  style: TextStyle(),
                ),
                onPressed: () {
                  num1 = Random().nextInt(6) + 1; // 5
                  num2 = Random().nextInt(6) + 1;
                  setState(() {});

                  print(num1);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
