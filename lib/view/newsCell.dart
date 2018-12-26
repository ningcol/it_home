import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:it_home/model/newsListModel.dart';



class NewsCell extends StatelessWidget {
  final Toplist model;

  NewsCell({this.model});

  @override
  Widget build(BuildContext context) {


    Widget subTitle(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start, // clomn 是以纵轴的方向进行对齐
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.only(bottom: 3, left: 12),
            child: new Text(
              model.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: new TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      );
    }


    return Container(
      padding: const EdgeInsets.all(12.0),
      height: 100,
      child: new Column(
        children: <Widget>[
          new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new CachedNetworkImage(
                width: 100,
                placeholder: new CircularProgressIndicator(),
                imageUrl: model.image,
              ),
              new Expanded(
                child: subTitle(),
              )
            ],
          )
        ],
      ),
    );
  }
}
