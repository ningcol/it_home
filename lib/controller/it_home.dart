import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:it_home/view/base/navigationIconView.dart';

import 'package:it_home/controller/news.dart';
import 'package:it_home/controller/lapin.dart';
import 'package:it_home/controller/forum.dart';
import 'package:it_home/controller/mine.dart';

import 'package:it_home/tools/helper.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: new ITHome(),
    );
  }
}


class ITHome extends StatefulWidget {
  @override
  _ITHomeState createState() => _ITHomeState();
}

class _ITHomeState extends State<ITHome> {

  int _currentIndex = 0;
  StatefulWidget _currentPage;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;


  @override
  void initState() {
    super.initState();

    _navigationViews = <NavigationIconView>[
      new NavigationIconView(icon: new Icon(Icons.home), title: new Text("资讯")),
      new NavigationIconView(icon: new Icon(Icons.thumb_up), title: new Text("辣品")),
      new NavigationIconView(icon: new Icon(Icons.forum), title: new Text("圈子")),
      new NavigationIconView(icon: new Icon(Icons.account_circle), title: new Text("我")),
    ];

    _pageList = [
      new News(),
      new Lapin(),
      new Forum(),
      new Mine()
    ];

    _currentPage = _pageList[_currentIndex];

    print(Helper.screenWithPx);
    print(Helper.screenHeightPx);
    print(Helper.pixelRatio);

  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: _currentPage,
      ),
      bottomNavigationBar: _getNavigationBar(),
    );
  }

  _getNavigationBar(){
    return new CupertinoTabBar(
      currentIndex: _currentIndex,
      items: _navigationViews.map((NavigationIconView view) => view.item).toList(),
      onTap: (int index){
        if(index == _currentIndex) return;
        setState(() {
          _currentIndex = index;
          _currentPage = _pageList[index];
        });
      },
    );
  }








}
