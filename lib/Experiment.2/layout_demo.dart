import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidgetsApp());
}

class MyWidgetsApp extends StatelessWidget {
  const MyWidgetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widgets Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text Widget
              const Text(
                "Hello, Flutter!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Image Widget (from network)
              Image.network(
                "https://flutter.dev/images/flutter-logo-sharing.png",
                width: 150,
              ),

              const SizedBox(height: 20),

              // Container Widget with padding and background color
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.blue[100],
                child: const Text(
                  "I am inside a Container",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 20),

              // Button Widget with an onPressed handler
              ElevatedButton(
                onPressed: () {
                  // Action on button press
                  print("Button Pressed!");
                },
                child: const Text("Click Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
