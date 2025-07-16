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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🖼️ Add your image here
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/code-1076536_1280.jpg', // Change this path to your actual asset path
                  height: 200,
                  width: 600,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Hi, I am Kaviya — a passionate application developer with experience in Svelte, React, Java, and Flutter. I enjoy crafting user-centric, responsive web and mobile applications with clean UI and smooth functionality.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
