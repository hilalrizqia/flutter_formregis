import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'mysecondscreen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Third Screen"),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(children: <Widget>[
        Image.network(
            'http://getwallpapers.com/wallpaper/full/8/a/d/54871.jpg'),
        Text(
          'ThirdScreen :Muhammad Farhan',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 2.0),
        ),
        RaisedButton(
          child: Text(
            'Wanna Go To HomeScreen?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: new Color(0xFFFF5722),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
        RaisedButton(
          color: Colors.deepOrange,
          child: Text("Wanna Go To The SecondScreen?"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
      ]),
    );
  }
}
