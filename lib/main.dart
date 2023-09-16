import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                print("Tapped on Home Screen");
              },
              onDoubleTap: (){
                print("Double Tapped on Home Screen");
              },
              child: Text("Home Screen"),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: (){
                print("Tapped on Hello World");
              },
              borderRadius: BorderRadius.circular(10),
              child: Text("Hello World"),
            ),
          ],
        ),
      ),
    );
  }
}

