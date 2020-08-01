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
          title: Text(
            "Weather",
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          iconTheme: IconThemeData(color: Colors.black54),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _weatherDescription(),
                Divider(),
                _temperature(),
                Divider(),
                _temperatureForecast(),
                Divider(),
                _footerRatings(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
        'https://cdn.pixabay.com/photo/2018/04/06/00/25/nature-3294681__340.jpg'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'kokoko',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'kookokokokokkoookokokokookokokokkkkkkkkkkkkkkkkkkkkkkkkkkkkkooooooooooooookkookokkokokookokokokokokoookookokokokokookokokokokokokokokkokokookokokokookokokokokook',
        style: TextStyle(color: Colors.black54),
      )
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.orange,
          ),
        ],
      ),
      SizedBox(
        width: 16.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'kokokokooo',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'kokokokoookokokokokokokookoik',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
      spacing: 10.0,
      children: List.generate(9, (int index) {
        return Chip(
          label: Text(
            '${index + 20}∘C',
            style: TextStyle(fontSize: 15.0),
          ),
          avatar: Icon(
            Icons.cloud,
            color: Colors.blue,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.grey.shade300,
        );
      }));
}

Row _footerRatings() {
  var stars = Row(
    children: <Widget>[
      Icon(
        Icons.star,
        size: 15,
        color: Colors.orangeAccent,
      ),
      Icon(
        Icons.star,
        size: 15,
        color: Colors.orangeAccent,
      ),
      Icon(
        Icons.star,
        size: 15,
        color: Colors.orangeAccent,
      ),
      Icon(
        Icons.star,
        size: 15,
        color: Colors.black,
      ),
      Icon(
        Icons.star,
        size: 15,
        color: Colors.black,
      ),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text(
        'kokokokokokokokoko.com',
        style: TextStyle(fontSize: 15),
      ),
      stars,
    ],
  );
}
