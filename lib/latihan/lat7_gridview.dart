import 'package:flutter/cupertino.dart';
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
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text('Hello'),
        ),
        body: Column(
          children: [
            // Text label on the left
            Padding(
              padding: const EdgeInsets.all(21.0), // Add top padding
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Space evenly
                children: [
                  Text(
                    'Your Favorites',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle edit button press
                      print('Edit button pressed');
                    },
                    icon: Icon(Icons.edit),
                    label: Text('Edit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Customize button color
                      side: BorderSide(
                        color: Colors.blue, // Customize border color
                        width: 2.0, // Customize border width
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8.0),
            // GridView
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // Replace with your image paths
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 0.0), // Text padding
                          child: Text('GoRide'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // Replace with your image paths
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 0.0), // Text padding
                          child: Text('GoCar'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // Replace with your image paths
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 0.0), // Text padding
                          child: Text('GoFood'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // Replace with your image paths
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 0.0), // Text padding
                          child: Text('GoSend'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // Replace with your image paths
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 0.0), // Text padding
                          child: Text('GoMart'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // Replace with your image paths
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 0.0), // Text padding
                          child: Text('GoPulsa'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // Replace with your image paths
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 0.0), // Text padding
                          child: Text('Check In'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
