import 'package:flutter/material.dart';

class Lapin extends StatefulWidget {
  @override
  _LapinState createState() => _LapinState();
}

class _LapinState extends State<Lapin> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('辣品'),
        ),
        body: new Center(
          child: new Text('11111111'),
        )
    );
  }
}
