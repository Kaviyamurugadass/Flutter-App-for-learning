import 'package:flutter/material.dart';
import '../widgets/nav_drawer.dart';

class SkillsScreen extends StatelessWidget {
  final List<String> skills = [
  'Svelte & SvelteKit',
  'Java',
  'React.js',
  'Tailwind CSS',
  'JavaScript',
  'Flutter (Beginner)',
  'Dart (Beginner)',
  'Git & GitHub',
  'Zod Validation',
  'Google OAuth (Lucia)',
  'Data curation',
  'FastAPI',
  'MongoDB',
  'Docker',
  'UI/UX Implementation',
  'API Integration',
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
