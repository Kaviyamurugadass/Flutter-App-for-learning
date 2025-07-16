import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Text(
              'My Portfolio',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('About'),
            onTap: () => Navigator.pushReplacementNamed(context, '/about'),
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Skills'),
            onTap: () => Navigator.pushReplacementNamed(context, '/skills'),
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contact'),
            onTap: () => Navigator.pushReplacementNamed(context, '/contact'),
          ),
        ],
      ),
    );
  }
}
