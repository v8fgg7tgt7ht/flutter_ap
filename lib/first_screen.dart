import 'package:flutter/material.dart';
import 'package:flutter_ap/second_screen.dart';

//import 'package:returned_pass_data/second_screen.dart';
class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String text = 'привет';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('koko'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                text,
                style: TextStyle(fontSize: 24),
              ),
            ),
            RaisedButton(
                child: Icon(Icons.input),
                onPressed: () {
                  _scSc(context);
                }),
          ],
        ),
      ),
    );
  }

  void _scSc(BuildContext context) async {
    Route route = MaterialPageRoute(builder: (context) => SecondScreen());
    final result = await Navigator.push(context, route);
    setState(() {
      text = result;
    });
  }
}
