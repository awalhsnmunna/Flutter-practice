import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: SizedBox(
                height: 100,
                width: 250,
                child: ColoredBox(color: Colors.green),
              ),
            ),
            SizedBox(
              height: 500,
              width: 200,
              child: Column(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.blue)),

                  Expanded(flex: 7, child: Container(color: Colors.amber)),
                ],
              ),
            ),

            SizedBox(height: 10),

            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  //top: 10,
                  //left: 10,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
