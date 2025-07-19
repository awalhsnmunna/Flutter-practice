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

            InkWell(
              onTap: (){
                print("I'm inkWell");
              },
              onHover: (value){
                print("I'm inkWell hover");
              },
              onDoubleTap: (){
                print("I'm inkWell double tap");
              },
              onLongPress: (){
                print("I'm inkWell long press");
              },
              child: Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.only(top: 50),
                child: Text("This is a container", style: TextStyle(color: Colors.blue, fontSize: 25),),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 5),
                  boxShadow: [

                  ]
                )
              
              ),
            ),
            GestureDetector(
              onTap: (){
                print("I'm Gesture");
              },
              onDoubleTap: (){
                print("I'm Gesture double tap");
              },
              onLongPress: (){
                print("I'm Gesture long press");
              },
              child: Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.only(top: 50),
                  child: Text("This is a container", style: TextStyle(color: Colors.blue, fontSize: 25),),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 5),
                      boxShadow: [
              
                      ]
                  )
              
              ),
            )

          ],
        ),
      ),
    );
  }
}
