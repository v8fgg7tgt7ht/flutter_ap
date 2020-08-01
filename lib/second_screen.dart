import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController textFiledController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kko2'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32),
            child: TextField(
              controller: textFiledController,
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          RaisedButton(
              child: Icon(Icons.keyboard_return),
              onPressed: () {
                String nazad = textFiledController.text;
                Navigator.pop(context, nazad);
              }),
        ],
      ),
    );
  }
}
