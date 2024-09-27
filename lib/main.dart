import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exam App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
          ),
          headlineLarge: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: FlutterExam(),
    );
  }
}

class FlutterExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Exam App'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Settings tapped!')));
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to the Flutter Exam!',
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Center(
            child: Image.asset('assets/Maximo_Garcia.jpg', height: 150),
          ),
          SizedBox(height: 20),
          Text(
            'This app demonstrates the use of assets, fonts, buttons, and icons in Flutter.',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  print('Confirmation Successful!');
                },
                icon: Icon(Icons.check),
                label: Text('Confirm'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  print('Action Canceled');
                },
                icon: Icon(Icons.close),
                label: Text('Cancel'),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 200,
        child: PageView(
          children: [
            Image.asset('asset/Maximo_Garcia.jpg'),
            Image.asset('asset/Maximo_Garcia.jpg'),
            
            Icon(Icons.image, size: 100, color: Colors.blue),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}