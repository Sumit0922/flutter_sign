import 'package:json_annotation/json_annotation.dart';

class NewApimodel {
  var last_name;
  var first_name;
  var email_id;
@JsonSerializable()
  NewApimodel({
    required this.last_name,
    required this.email_id,
    required this.first_name,
  });
  factory NewApimodel.fromJson(Map<String, dynamic> json) {
    return NewApimodel(
      last_name: json['user_id'],
      first_name : json['first_name'],
      email_id: json['email_id'],
    );
  }
}