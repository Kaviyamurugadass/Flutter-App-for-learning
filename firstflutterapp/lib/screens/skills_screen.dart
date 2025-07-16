import 'package:flutter/material.dart';
import '../widgets/nav_drawer.dart';

class SkillsScreen extends StatelessWidget {
  final List<String> skills = [
    'Flutter',
    'Dart',
    'Firebase',
    'UI/UX Design',
    'Git',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(title: Text('Skills')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: skills.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: Icon(Icons.check_circle_outline),
            title: Text(skills[index]),
          ),
        ),
      ),
    );
  }
}
