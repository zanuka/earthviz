import 'package:flutter/material.dart';

import './data.dart';

class DataManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DataManagerState();
  }
}

class _DataManagerState extends State<DataManager> {
  List<String> _data = ['Air Temperature'];

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            _data.add('NZ Air Temperature');
          });
        },
        child: Text('Add Data'),
      ),
    ),
    Data(_data)
    ],);
  }
}
