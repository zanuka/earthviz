import 'package:flutter/material.dart';

import './data.dart';

class DataManager extends StatefulWidget {

  DataManager(this.initialItem);

  final String initialItem;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DataManagerState();
  }
}

class _DataManagerState extends State<DataManager> {
  List<String> _data = [];

  @override
  void initState() {
    super.initState();
    _data.add(widget.initialItem);
  }

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
