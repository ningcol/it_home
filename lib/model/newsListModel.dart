import 'package:json_annotation/json_annotation.dart';

part 'newsListModel.g.dart';


@JsonSerializable()
class NewsListModel extends Object {

  @JsonKey(name: 'toplist')
  List<Toplist> toplist;

  @JsonKey(name: 'newslist')
  List<Newslist> newslist;

  @JsonKey(name: 'lapin')
  bool lapin;

  NewsListModel(this.toplist,this.newslist,this.lapin,);

  factory NewsListModel.fromJson(Map<String, dynamic> srcJson) => _$NewsListModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NewsListModelToJson(this);

}


@JsonSerializable()
class Toplist extends Object {

  @JsonKey(name: 'client')
  String client;

  @JsonKey(name: 'device')
  String device;

  @JsonKey(name: 'topplat')
  String topplat;

  @JsonKey(name: 'newsid')
  int newsid;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'postdate')
  String postdate;

  @JsonKey(name: 'orderdate')
  String orderdate;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'hitcount')
  int hitcount;

  @JsonKey(name: 'commentcount')
  int commentcount;

  @JsonKey(name: 'cid')
  int cid;

  @JsonKey(name: 'sid')
  int sid;

  @JsonKey(name: 'url')
  String url;

  Toplist(this.client,this.device,this.topplat,this.newsid,this.title,this.postdate,this.orderdate,this.description,this.image,this.hitcount,this.commentcount,this.cid,this.sid,this.url,);

  factory Toplist.fromJson(Map<String, dynamic> srcJson) => _$ToplistFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ToplistToJson(this);

}


@JsonSerializable()
class Newslist extends Object {

  @JsonKey(name: 'newsid')
  int newsid;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'postdate')
  String postdate;

  @JsonKey(name: 'orderdate')
  String orderdate;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'hitcount')
  int hitcount;

  @JsonKey(name: 'commentcount')
  int commentcount;

  @JsonKey(name: 'cid')
  int cid;

  @JsonKey(name: 'sid')
  int sid;

  @JsonKey(name: 'url')
  String url;

  Newslist(this.newsid,this.title,this.postdate,this.orderdate,this.description,this.image,this.hitcount,this.commentcount,this.cid,this.sid,this.url,);

  factory Newslist.fromJson(Map<String, dynamic> srcJson) => _$NewslistFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NewslistToJson(this);

}


