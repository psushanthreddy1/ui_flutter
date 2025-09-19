import 'package:flutter/material.dart';

void main() {
  runApp(ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive UI",
      home: Scaffold(
        appBar: AppBar(title: Text("Responsive UI Example")),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return Center(child: Text("Mobile Layout", style: TextStyle(fontSize: 24)));
            } else if (constraints.maxWidth < 1200) {
              return Center(child: Text("Tablet Layout", style: TextStyle(fontSize: 24)));
            } else {
              return Center(child: Text("Desktop Layout", style: TextStyle(fontSize: 24)));
            }
          },
        ),
      ),
    );
  }
}
