// import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'Modelbase.g.dart';
@JsonSerializable()

class Model{
  String id;
  String first_name;
  String last_name;

 Model({required this.first_name,required this.last_name , required this.id});
// factory Model.fromJson(Map<String,dynamic>json)=> _$ModelFromJson(json);
//   Map<String,dynamic>toJson()=> _$ModelToJson(this);
}