import 'package:flutter/material.dart';

void main() {
  runApp(EarthViz());
}

class EarthViz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EarthViz'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Add Item'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/earth_one.jpg'),
                    Text('Earth')
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
