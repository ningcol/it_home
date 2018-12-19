import 'package:json_annotation/json_annotation.dart';

part 'sliderModel.g.dart';


List<SliderModel> getSliderModelList(List<dynamic> list){
  List<SliderModel> result = [];
  list.forEach((item){
    result.add(SliderModel.fromJson(item));
  });
  return result;
}
@JsonSerializable()
class SliderModel extends Object {

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'starttime')
  String starttime;

  @JsonKey(name: 'endtime')
  String endtime;

  @JsonKey(name: 'link')
  String link;

  @JsonKey(name: 'opentype')
  int opentype;

  @JsonKey(name: 'device')
  String device;

  @JsonKey(name: 'image')
  String image;

  SliderModel(this.title,this.starttime,this.endtime,this.link,this.opentype,this.device,this.image,);

  factory SliderModel.fromJson(Map<String, dynamic> srcJson) => _$SliderModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SliderModelToJson(this);

}


