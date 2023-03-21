import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Modelcall {
  String user_id;
  String password;
  Modelcall({required this.user_id, required this.password});
}
