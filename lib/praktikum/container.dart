import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Stack( // Use a Stack to layer widgets on top of each other
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(),
              ),
              padding: EdgeInsets.all(14),
              child: Text('Hello World 2!'),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Text('Hello World'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
