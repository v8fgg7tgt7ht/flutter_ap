import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("kokoko"),
          centerTitle: true,
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.network(
                  'https://natworld.info/wp-content/uploads/2018/07/narisovannye-kartinki-i-foto-domashnih-zhivotnyh-dlja-detej-900x500.jpg'),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.pinkAccent,
                child: Text('1'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.amber,
                child: Text('2'),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.blue,
                child: Text('3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
