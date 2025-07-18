import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("Hello World"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                  onPressed: (){
                print("This is a button");
              }, child: Row(
                children: [
                  Text("Send", style: TextStyle(color: Colors.white, fontSize: 25
                  ),),
                  Icon(Icons.send)
                ],
              )),
            ),
            Icon(Icons.add_a_photo, size: 50, color: Colors.red,),

            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.only(top: 50),
              color: Colors.deepPurple,
              child: Text("This is a container", style: TextStyle(color: Colors.blue, fontSize: 25),),


            ),

          ],
        ),
      ),
    );
  }
}
