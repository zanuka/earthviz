import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  Data(this.data);

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: data
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/earth_one.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
