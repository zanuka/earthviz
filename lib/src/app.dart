import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/image_model.dart';
import 'dart:convert';

class App extends StatefulWidget {
  createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  String base = 'http://jsonplaceholder.typicode.com';
  String path = 'photos';
  String url = '';

  void fetchImage() async {
    counter += 1;
    url = '$base/$path/$counter';

    http.Response response = await http.get(url);
    if (response.body != null) {
      dynamic data = json.decode(response.body);
      // var imageModel = ImageModel.fromJson(data);
      if (data['success'] == 1) {
        return data['result'];
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

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
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text('EarthViz'),
        ),
      ),
    );
  }
}
