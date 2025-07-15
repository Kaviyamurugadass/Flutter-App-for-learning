import 'package:flutter/material.dart'; // Import the Flutter Material package

void main() => runApp(MyApp()); // The main function is the entry point of the app
//runApp is a function that takes a widget and makes it the root of the widget tree
//MaterialApp is a widget that provides material design styling to the app
//Scaffold is a widget that provides a basic structure for the app, including an app bar and body

class StateWidgetSample extends StatelessWidget{ // StatelessWidget is a widget that does not have mutable state(Not change)
  @override
  Widget build(BuildContext context) { // build is a method that describes the part of the user interface represented by this widget
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Stateless Widget"),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget { // StatefulWidget is a widget that has mutable state(change over time)
  @override
  MyAppState createState() => MyAppState(); // createState is a method that creates the mutable state for this widget
}

class MyAppState extends State<MyApp>{ // _MyAppState is the state class for MyApp, it extends State<MyApp>
  String text = "Hello, Flutter!";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Column(children: [
          Text("Stateful Widget"),
          MaterialButton(onPressed: () {
            print(text);
            setState(() { // setState is a method that tells the framework that the internal state of this object has changed
                text = "Button Clicked!";
            });
            print(text);

          },
          child: Text(text),
          color: Colors.blue,)
        ],)
      )
    );
  }
  
}