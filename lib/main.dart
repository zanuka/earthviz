import 'package:flutter/material.dart';

main() {
  runApp(EarthViz());
}

class EarthViz extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EarthViz'),
        ),
      ),
    );
  }
}
