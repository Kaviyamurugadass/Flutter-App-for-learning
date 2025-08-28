import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: const Text('My Dashatar App'),
        ),
        body: Center(
          child: Image.asset('images/My Dasharat.png'),
        ),
      ),
    ),
  );
}