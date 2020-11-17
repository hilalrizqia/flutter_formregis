import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'mythird.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Second Screen"),
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(children: <Widget>[
        Image.network(
            'http://getwallpapers.com/wallpaper/full/3/5/5/54816.jpg'),
        Text(
          'SecondScreen : Hilal Rizqi',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 2.0),
        ),
        RaisedButton(
          child: Text(
            'Wanna Go To HomeScreen?',
            style: TextStyle(
              color: Colors.red,
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
