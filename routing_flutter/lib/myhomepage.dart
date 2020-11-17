import 'package:flutter/material.dart';
import 'mysecondscreen.dart';
import 'mythird.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("MainScreen"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(children: <Widget>[
        Image.network(
            'http://getwallpapers.com/wallpaper/full/3/f/7/54812.jpg'),
        Text(
          'HomeScreen : Hilal Rizqi',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 2.0),
        ),
        RaisedButton(
          child: Text(
            'Wanna Go To SecondScreen?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: new Color(0xFFFF5722),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
        RaisedButton(
          color: Colors.deepOrange,
          child: Text("Wanna Go To The ThirdScreen?"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdScreen()),
            );
          },
        ),
      ]),
    );
  }
}
