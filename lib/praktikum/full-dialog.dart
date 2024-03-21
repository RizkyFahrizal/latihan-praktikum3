import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fullscreen Dialog Demo',
      theme: ThemeData(
        // Your app theme customization (optional)
      ),
      home: const MyHomePage(title: 'Fullscreen Dialog Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showFullscreenDialog() {
    tampilkanDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showFullscreenDialog,
          child: const Text('Buka Dialog Fullscreen'),
        ),
      ),
    );
  }
}

// Function to display the fullscreen dialog
void tampilkanDialog(BuildContext context) {
showDialog<void>(
 context: context,
 builder: (BuildContext context) => Dialog.fullscreen(
 child: Center(
 child: Column(
 mainAxisSize: MainAxisSize.min,
 children: [
 Padding(
 padding: EdgeInsets.all(20), child: Text("Dialog Fullscreen")),
 ElevatedButton(
 onPressed: () => Navigator.pop(context, 'Cancel'),
 child: const Text('Tutup'),
 ),
 ],
 )), //column cent
 ),
);
 }

