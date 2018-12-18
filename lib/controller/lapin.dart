import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_home/tools/helper.dart';


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
        body: new Row(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  width: Helper.screenWith,
                  height: ScreenUtil().setWidth(64*2),
                  color: Colors.yellow,
                ),
                new Container(
                  width: Helper.screenWith,
                  height: ScreenUtil().setWidth(64*2),
                  color: Colors.green,
                ),
                new Container(
                  width: Helper.screenWith,
                  height: 64,
                  color: Colors.blue,
                ),
              ],
            )
          ],
        )
    );
  }
}
