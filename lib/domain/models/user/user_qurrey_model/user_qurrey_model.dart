import 'package:json_annotation/json_annotation.dart';

part 'user_qurrey_model.g.dart';

@JsonSerializable()
class UserQurreyModel {
  int? page;
  int? count;

  UserQurreyModel({this.page, this.count});

  factory UserQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$UserQurreyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserQurreyModelToJson(this);
}
