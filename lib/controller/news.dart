import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';



class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('首页'),
        ),
        body: new Center(
          child: new Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('状态栏高度:${ScreenUtil.statusBarHeight}px'),
                  Text('状态栏高度:${MediaQuery.of(context).padding.top}px'),
                  Text('我的文字大小在设计稿上是25px，不会随着系统的文字缩放比例变化',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(24, false))),
                  Text('我的文字大小在设计稿上是25px，会随着系统的文字缩放比例变化',
                      style: TextStyle(
                          color: Colors.black, fontSize: ScreenUtil().setSp(24))),
                ],
              )
            ],
          )
        )
    );
  }
}
