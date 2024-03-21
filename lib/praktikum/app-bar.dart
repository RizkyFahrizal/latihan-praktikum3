import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int idx = 0; // index yang aktif

  static const List<Center> halaman = [
    Center(child: Text("satu")),
    Center(child: Text("dua")),
  ];

  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         leading: FlutterLogo(),
 backgroundColor: Colors.blueGrey,
 title: Text('My App'),
 actions: <Widget>[
 IconButton(
 icon: Icon(Icons.account_circle_rounded),
 onPressed: () {
 // icon account di tap
 },
 ),
 IconButton(
 icon: Icon(Icons.settings),
 onPressed: () {
 // icon setting ditap
 },
 ),
 ],
        ),
        body: halaman[idx],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          selectedItemColor: Colors.red,
          onTap: onItemTap,
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Badge(
                // Add badge with label "2"
                label: Text("2"),
                child: Icon(Icons.school),
              ),
              label: "School",
            ),
          ],
        ),
      ),
    );
  }
}
