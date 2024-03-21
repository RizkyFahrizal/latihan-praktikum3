import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
 length: 2,
 child: Scaffold(
 appBar: AppBar(
 title: const Text('Fakultas'),
 bottom: const TabBar(tabs: [
 Tab(icon: Icon(Icons.directions_bike), text: "Sepeda"),
Tab(icon: Icon(Icons.directions_boat), text: "Kapal")
 ])),
 body: const TabBarView(
 children: [
 Center(child: Text("isi tab 1")),
Center(child: Text("isi tab 2"))
 ],
 )
 )
 )
 );
  }
}