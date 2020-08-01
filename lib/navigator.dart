import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: FirstHome(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => FirstHome());
            break;
          case '/second':
            User user = settings.arguments;
            return MaterialPageRoute(
                builder: (context) => SecondHome(user: user));
            break;
        }
      }));
}

class FirstHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('koko'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            User user = User(name: 'приветт', age: 0);
            Navigator.pushNamed(context, '/second', arguments: user);
          },
          child: Text('koko1'),
        ),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  final User user;
  SecondHome({this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.user.name} '),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('kkoko4'),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final int age;
  User({this.name, this.age});
}
