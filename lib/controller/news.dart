import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:it_home/view/newsCell.dart';

import 'package:it_home/model/sliderModel.dart';
import 'package:it_home/model/newsListModel.dart';

import 'package:it_home/tools/helper.dart';
import 'package:it_home/tools/networkUtil.dart';



class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with SingleTickerProviderStateMixin {

  TabController _tabController;
  List<SliderModel> _list;          // 注意list为null
  List<String> _sliderImages = [];  // 注意list不为null
  List<Toplist> _newsList = [];


  final List<Tab> _myTabs = <Tab>[
    new Tab(text: '最新'),
    new Tab(text: 'Tab2'),
    new Tab(text: 'Tab3'),
    new Tab(text: 'Tab4'),
    new Tab(text: 'Tab5'),
    new Tab(text: 'Tab6'),
    new Tab(text: 'Tab7'),
    new Tab(text: 'Tab8'),
    new Tab(text: 'Tab9'),
    new Tab(text: 'Tab10'),
    new Tab(text: 'Tab11'),
  ];


  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: _myTabs.length, vsync: this);

    _getSliderData();
    _getNewsData();

  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('首页'),
          bottom: new TabBar(
            tabs: _myTabs,
            controller: _tabController,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
          ),
        ),
        body: _list == null
          ? (new Center(child: CircularProgressIndicator()))
          : new TabBarView(
            controller: _tabController,
            children: _myTabs.map((Tab tab){
               return tabPage(tab.text);
            }).toList(),
          )
    );
  }

  Widget tabPage(String tabText){
    if (tabText == _myTabs[0].text){
      return new Column(
        children: <Widget>[
          new Container(
            height: Helper.screenHeightPx/(Helper.pixelRatio * 5) + 20,
            child: _swiper(),
          ),
          new Expanded(
            child: _buildListView(),
          )
        ],
      );
    } else {
      return new Center(child: new Text(tabText));
    }
  }

  Widget _swiper(){
    return new Swiper(
      itemBuilder: (BuildContext context,int index){
        return new Image.network(_sliderImages[index],fit: BoxFit.fill,);
      },
      autoplay: true,
      autoplayDelay: 5000,
      itemCount: _sliderImages.length,
      pagination: new SwiperPagination(
        builder: SwiperPagination.dots,
      ),
      onTap: (int index){
        print(index);
      },
    );
  }

  Widget _buildListView(){
    return new ListView.builder(
      itemCount: _newsList.length,
      itemBuilder: (context, index){
        return NewsCell(model: _newsList[index]);
      },
    );
  }



  _getSliderData(){
    NetworkUtil.get("/json/slide/index", (data) {
//      print(data);
      _list = getSliderModelList(data);   // 这里有个坑，it之家后台返回的轮播图有两种跳转类型，但是一个是int一个是String,处理方式（json['opentype'] == 1 ? json['link'].toString() : json['link'] as String,）
      getSwiperImage();
      setState((){
      });
    }, errorCallBack: (errorMsg) {
      print("error:" + errorMsg);
    });
  }

  _getNewsData(){
    NetworkUtil.get("/json/newslist/news", (data) {
      NewsListModel newsModel = new NewsListModel.fromJson(data);
      _newsList.addAll(newsModel.toplist);
      for (Newslist newsModel in newsModel.newslist) {
          Toplist top = new Toplist('', '', '', newsModel.newsid, newsModel.title, newsModel.postdate, newsModel.orderdate,
              newsModel.description, newsModel.image, newsModel.hitcount, newsModel.commentcount, newsModel.cid, newsModel.sid, newsModel.url);
          _newsList.add(top);
      }
      setState((){
      });
    }, errorCallBack: (errorMsg) {
      print("error:" + errorMsg);
    });
  }

  getSwiperImage(){
    for (int i = 0; i < _list.length; i++) {
      _sliderImages.add(_list[i].image);
    }
  }


}
