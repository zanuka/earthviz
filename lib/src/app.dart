// Import flutter helper library
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          child: Icon(
            Icons.terrain,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              setState(() {
                counter += 1;
              });
            });
          },
        ),
        appBar: AppBar(
          title: Text('EarthViz'),
        ),
      ),
    );
  }
}
