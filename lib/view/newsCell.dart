import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:it_home/model/newsListModel.dart';
import 'package:it_home/tools/dateUtil.dart';


class NewsCell extends StatelessWidget {
  final Toplist model;

  NewsCell({this.model});

  @override
  Widget build(BuildContext context) {

    Widget bottomTimeLabel(Toplist model){
      Color textColor;
      String text;

      if(model.topplat.isNotEmpty) {
        textColor = Colors.deepOrange;
        text = '置顶';
      }else if(model.url.contains('lapin')){
        textColor = Colors.black26;
        text = '广告';
      } else {
        String textTime = DateUtil.getDateStringHourMinute(model.postdate);
        return new Text(textTime,
            style: new TextStyle(
              color: Color(0xff979797),
              fontSize: 12,
            )
        );
      }

     return new Container(
        padding: const EdgeInsets.only(left: 4,top: 0, right: 4, bottom: 0),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: textColor),
              borderRadius: BorderRadius.circular(3.0)),
        ) ,
        child: new Text(text,
          style: new TextStyle(
            color: textColor,
            fontSize: 10,
          ),
        ),
      );
    }


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
                fontSize: 15,
              ),
            ),
          ),
          new Container(
            padding: const EdgeInsets.only(top: 14, left: 12),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                bottomTimeLabel(model),
                new Text('${model.commentcount}评',
                    style: new TextStyle(
                        color: Color(0xff979797),
                        fontSize: 12.0
                    ),
                  ),
              ],
            ),
          )
        ],
      );
    }


    return Container(
      padding: const EdgeInsets.all(12.0),
      height: 100,
      decoration: UnderlineTabIndicator(
          borderSide: BorderSide(color: Color(0Xfff1f1f1), width: 1.0)
      ),
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
