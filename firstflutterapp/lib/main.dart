import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Widgets Demo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hi Kaviya 👋',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(15),
                color: Colors.blueAccent,
                child: Text(
                  'This is a Container widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Left'),
                  Text('Middle'),
                  Text('Right'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
