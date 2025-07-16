import 'package:flutter/material.dart';
import '../widgets/nav_drawer.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import

class ContactScreen extends StatelessWidget {
  final String linkedInUrl =
      'https://www.linkedin.com/in/kaviya-m-366268252?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(title: Text('Contact')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email: kaviya@example.com'),
            SizedBox(height: 8),
            InkWell(
              child: Text(
                'LinkedIn: $linkedInUrl',
                style: TextStyle(
                  color: Colors.indigo,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () async {
                final uri = Uri.parse(linkedInUrl);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
            ),          
            ],
        ),
      ),
    );
  }
}
