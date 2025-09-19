import 'package:flutter/material.dart';

void main() {
  runApp(MyWidgetsApp());
}

class MyWidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Widgets Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text Widget
              Text(
                "Hello, Flutter!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),

              // Image Widget (from network)
              Image.network(
                "https://flutter.dev/images/flutter-logo-sharing.png",
                width: 150,
              ),

              SizedBox(height: 20),

              // Container Widget
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue[100],
                child: Text(
                  "I am inside a Container",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              SizedBox(height: 20),

              // Button Widget
              ElevatedButton(
                onPressed: () {
                  print("Button Pressed!");
                },
                child: Text("Click Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
