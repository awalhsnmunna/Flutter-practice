import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ostad Flutter App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Column(
          children: [
            Text(
              "Ostad Flutter 2",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,top: 20),
            child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter your email",
                   hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                  hintMaxLines: 3,
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 25, color: Colors.blue),
                  helperText: "Please enter your email",
                  helperStyle: TextStyle(fontSize: 15, color: Colors.green),
                  prefixText: "Email: ",
                  suffixText: "@gmail.com",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.send),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)
                  ),
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                hintMaxLines: 3,
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 25, color: Colors.blue),
                helperText: "Please enter your password",
                helperStyle: TextStyle(fontSize: 15, color: Colors.green),
                prefixText: "Password: ",
                prefixIcon: Icon(Icons.remove_red_eye),
                suffixIcon: Icon(Icons.panorama_fish_eye),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter your number",
                hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                hintMaxLines: 3,
                labelText: "Number",
                labelStyle: TextStyle(fontSize: 25, color: Colors.blue),
                helperText: "Please enter your number",
                helperStyle: TextStyle(fontSize: 15, color: Colors.green),
                prefixText: "Numbner: ",
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.send),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
