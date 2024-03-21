import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> data = [
    // Replace placeholders with your actual data
    {
      "nama": "Andi",
      "hobi": ["Basket", "Membaca"]
    },
    {
      "nama": "Budi",
      "hobi": ["Menulis"]
    },
    {
      "nama": "Jono",
      "hobi": ["Memasak"]
    },
    {
      "nama": "Sumar",
      "hobi": ["Sepak Bola"]
    },
    {
      "nama": "Gibran",
      "hobi": ["Menari", "Melukis"]
    },
    {
      "nama": "Owi",
      "hobi": ["Membaca", "Beranang"]
    },
    // Add more entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to My Pages'),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Remove rounded corners
                  side: BorderSide(color: Colors.blue, width: 2.0),
                ),
                child: ListTile(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 1),
                        content: Text('Halo ${data[index]["nama"]}'),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.freepik.com/512/9187/9187604.png'),
                  ),
                  title: Text(data[index]["nama"]),
                  subtitle: Text(
                    '${data[index]["hobi"].join(', ')}',
                    style: TextStyle(color: Colors.black45),
                  ), // Combine hobbies with comma and space
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
