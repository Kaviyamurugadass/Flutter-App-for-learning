import 'package:flutter/material.dart';
import '../widgets/nav_drawer.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(title: Text('About')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Hi, I am Kaviya. I am a Flutter developer passionate about building beautiful apps.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
