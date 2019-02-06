import 'package:flutter/material.dart';

import './data_manager.dart';

void main() => runApp(EarthViz());

class EarthViz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EarthViz'),
        ),
        body: DataManager('Air Temp'),
      ),
    );
  }
}
