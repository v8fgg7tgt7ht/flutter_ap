import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
          appBar: AppBar(
            title: Text("kokoko"),
            centerTitle: true,
          ),
          body: BodyListView()),
    );
  }
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  return Column(
    children: <Widget>[
      Container(
        height: 300,
        child: ListView(
          padding: EdgeInsets.all(8),
          //shrinkWrap: true,
          //scrollDirection: Axis.horizontal,
          //itemExtent: 300,
          // reverse: true,
          children: <Widget>[
            ListTile(
              title: Text('koko1'),
              subtitle: Text('kokokokoko1'),
              leading: Icon(Icons.wb_sunny),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text('koko2'),
              subtitle: Text('kokokokoko2'),
              leading: Icon(Icons.wb_sunny),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text('koko3'),
              subtitle: Text('kokokokoko3'),
              leading: Icon(Icons.wb_sunny),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ),
    ],
  );
}
