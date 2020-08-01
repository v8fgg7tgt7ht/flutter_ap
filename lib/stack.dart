import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("kokoko"),
            centerTitle: true,
          ),
          body: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Icon(
                Icons.airplay,
                color: Colors.greenAccent,
                size: 200,
              ),
              Positioned(
                top: 60,
                left: 45,
                child: Text(
                  'koko',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          )),
    );
  }
}
