// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsListModel _$NewsListModelFromJson(Map<String, dynamic> json) {
  return NewsListModel(
      (json['toplist'] as List)
          ?.map((e) =>
              e == null ? null : Toplist.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['newslist'] as List)
          ?.map((e) =>
              e == null ? null : Newslist.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['lapin'] as bool);
}

Map<String, dynamic> _$NewsListModelToJson(NewsListModel instance) =>
    <String, dynamic>{
      'toplist': instance.toplist,
      'newslist': instance.newslist,
      'lapin': instance.lapin
    };

Toplist _$ToplistFromJson(Map<String, dynamic> json) {
  return Toplist(
      json['client'] as String,
      json['device'] as String,
      json['topplat'] as String,
      json['newsid'] as int,
      json['title'] as String,
      json['postdate'] == null
          ? null
          : DateTime.parse(json['postdate'] as String),
      json['orderdate'] == null
          ? null
          : DateTime.parse(json['orderdate'] as String),
      json['description'] as String,
      json['image'] as String,
      json['hitcount'] as int,
      json['commentcount'] as int,
      json['cid'] as int,
      json['sid'] as int,
      json['url'] as String);
}

Map<String, dynamic> _$ToplistToJson(Toplist instance) => <String, dynamic>{
      'client': instance.client,
      'device': instance.device,
      'topplat': instance.topplat,
      'newsid': instance.newsid,
      'title': instance.title,
      'postdate': instance.postdate?.toIso8601String(),
      'orderdate': instance.orderdate?.toIso8601String(),
      'description': instance.description,
      'image': instance.image,
      'hitcount': instance.hitcount,
      'commentcount': instance.commentcount,
      'cid': instance.cid,
      'sid': instance.sid,
      'url': instance.url
    };

Newslist _$NewslistFromJson(Map<String, dynamic> json) {
  return Newslist(
      json['newsid'] as int,
      json['title'] as String,
      json['postdate'] == null
          ? null
          : DateTime.parse(json['postdate'] as String),
      json['orderdate'] == null
          ? null
          : DateTime.parse(json['orderdate'] as String),
      json['description'] as String,
      json['image'] as String,
      json['hitcount'] as int,
      json['commentcount'] as int,
      json['cid'] as int,
      json['sid'] as int,
      json['url'] as String);
}

Map<String, dynamic> _$NewslistToJson(Newslist instance) => <String, dynamic>{
      'newsid': instance.newsid,
      'title': instance.title,
      'postdate': instance.postdate?.toIso8601String(),
      'orderdate': instance.orderdate?.toIso8601String(),
      'description': instance.description,
      'image': instance.image,
      'hitcount': instance.hitcount,
      'commentcount': instance.commentcount,
      'cid': instance.cid,
      'sid': instance.sid,
      'url': instance.url
    };
