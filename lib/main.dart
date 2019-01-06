import 'package:flutter/material.dart';

void main() {
  runApp(EarthViz());
}

class EarthViz extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EarthViz'),
        ),
        body: Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/earth_one.jpg'),
              Text('Earth')
            ],
          ),
        ),
      ),
    );
  }
}
