import 'package:flutter/material.dart';

void main() {
  runApp(MediaQueryApp());
}

class MediaQueryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("MediaQuery Example")),
        body: Builder(
          builder: (context) {
            double width = MediaQuery.of(context).size.width;
            double height = MediaQuery.of(context).size.height;

            return Center(
              child: Text(
                "Width: $width\nHeight: $height",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            );
          },
        ),
      ),
    );
  }
}
