import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device_mart/domain/models/user/user_model/user_model.dart';
part 'user_resp_model.g.dart';
@JsonSerializable()
class UserRespModel {
  int? statusCode;
  List<UserModel>? data;
  dynamic error;
  String? message;
  UserRespModel({
    this.statusCode,
    this.data,
    this.error,
    this.message,
  });
  factory UserRespModel.fromJson(Map<String, dynamic> json) {
    return _$UserRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UserRespModelToJson(this);
}
