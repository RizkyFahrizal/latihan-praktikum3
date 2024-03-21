import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Satu Sehat',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                // Implement delete functionality here
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildPublicSpaceWarning(),
              const SizedBox(height: 30),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    children: [
                      buildFavoriteServiceCard(
                          icon: Icons.local_hospital,
                          color: Colors.blue,
                          title: 'Covid-19 Vaccine'),
                      buildFavoriteServiceCard(
                          icon: Icons.assignment,
                          color: Colors.red,
                          title: 'Covid-19 Result'),
                      buildFavoriteServiceCard(
                          icon: Icons.healing,
                          color: Colors.orange,
                          title: 'EHAC'),
                      buildFavoriteServiceCard(
                          icon: Icons.medical_services,
                          color: Colors.green,
                          title: 'Covid-19 Vaccine'),
                      buildFavoriteServiceCard(
                          icon: Icons.assignment,
                          color: Colors.purple,
                          title: 'Covid-19 Result'),
                      buildFavoriteServiceCard(
                          icon: Icons.hearing,
                          color: Colors.teal,
                          title: 'EHAC'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildPublicSpaceWarning() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.cyan, width: 0.5),
      color: Colors.green,
    ),
    padding: const EdgeInsets.all(16),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Scann barcode disini?',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Jaga Kesehatan',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Image.network(
          'https://cdn.pixabay.com/photo/2017/02/08/17/47/smartphone-2049642_960_720.png',
          height: 130,
          width: 150,
        ),
      ],
    ),
  );
}

Widget buildFavoriteServiceCard({
  required IconData icon,
  required Color color,
  required String title,
}) {
  return Card(
    color: Colors.white,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 70, color: color),
          Text(title), // Add Text widget for the title
        ],
      ),
    ),
  );
}
