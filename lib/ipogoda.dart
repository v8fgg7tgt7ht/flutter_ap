import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // decoration: new BoxDecoration(color: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather Forecast",
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
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
    child: Container(
      color: Colors.red,
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _FirstHome(),
                  Divider(),
                  _weatherDescription(),
                  Divider(),
                  Divider(),
                  Divider(),
                  _temperature(),
                  Divider(),
                  Divider(),
                  Divider(),
                  _temp(),
                  Divider(),
                  _tempo(),
                  _tempor(),
                  Divider(),
                  Divider(),
                  Divider(),
                  _weatherDescriptions(),
                  Divider(),
                  BodyListView(),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'Murmansk Oblast, RU',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'Friday,Mar 20 2020',
        style: TextStyle(color: Colors.white),
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
            size: 80,
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
                '14 ∘F',
                style: TextStyle(color: Colors.deepPurple, fontSize: 40),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'LIGHT SNOW',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Row _FirstHome() {
  return Row(
    children: <Widget>[
      SafeArea(
          child: IconButton(
              onPressed: () {}, icon: Icon(Icons.youtube_searched_for))),
      Text('Enter City Name')
    ],
  );
}

Row _temp() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Icon(
        Icons.ac_unit,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.ac_unit,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.ac_unit,
        size: 30,
        color: Colors.white,
      ),
    ],
  );
}

Row _tempo() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            '5',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                '20',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ]);
}

Row _tempor() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'km/hr',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                '%',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                '%',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ]);
}

Column _weatherDescriptions() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        '7-DAY WEATHER FORECAST',
        style: TextStyle(color: Colors.white, fontSize: 16),
      )
    ],
  );
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
              title: Text(
                '6 ∘F',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Friday',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text(
                '5 ∘F',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Saturday',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text(
                '7 ∘F',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Sunday',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text(
                '3 ∘F',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Monday',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text(
                '4 ∘F',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Tuesday',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text(
                '8 ∘F',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Wednesday',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text(
                '9 ∘F',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Thursday',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text(
                '10 ∘F',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Friday',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text(
                'koko8',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'kokokokoko3',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ),
    ],
  );
}
