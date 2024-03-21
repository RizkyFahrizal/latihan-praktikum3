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
 width: 200,
 child: const Wrap(
 spacing: 10,
 children: [
 Text("satusatustu"),
 Text("dudududuaua"),
 Text("tigasigaga"),
 Text("empatempat"),
 Text("lialima"),
 Text("enamenam"),
 Text("tujuh"),
 Text("delapan"),
 Text("sembilan"),
 ],
 )),
          ],
        ),
      ),
    );
  }
}
