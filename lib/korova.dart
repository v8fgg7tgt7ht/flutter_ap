import 'package:flutter/material.dart';

class Korova extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  int _counter = 0;
  var _imageUrl = 'https://source.unsplash.com/random/';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _newImages() {
    setState(() {
      _imageUrl = 'https://source.unsplash.com/random/$_counter';
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pictures"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Image.network(
            _imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('kokoko3'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('kokoko2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('kokoko1'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _newImages,
        child: Icon(Icons.collections),
      ),
    );
  }
}
