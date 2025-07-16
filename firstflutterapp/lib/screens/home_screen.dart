import 'package:flutter/material.dart';
import '../widgets/nav_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(title: Text('Home')),
      body: Container(
      color: Colors.indigo, // Set the background color to indigo
        child: Center(
          child: Text(
            'Welcome to My Portfolio!',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: Colors.white, // Optional: Make text visible on indigo
          ),
        ),
      ),
      ),
    );
  }
}
