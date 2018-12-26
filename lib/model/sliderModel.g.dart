// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sliderModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SliderModel _$SliderModelFromJson(Map<String, dynamic> json) {
  return SliderModel(
      json['title'] as String,
      json['starttime'] as String,
      json['endtime'] as String,
      json['link'] as String,
      json['opentype'] as int,
      json['device'] as String,
      json['image'] as String);
}

Map<String, dynamic> _$SliderModelToJson(SliderModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'starttime': instance.starttime,
      'endtime': instance.endtime,
      'link': instance.link,
      'opentype': instance.opentype,
      'device': instance.device,
      'image': instance.image
    };
