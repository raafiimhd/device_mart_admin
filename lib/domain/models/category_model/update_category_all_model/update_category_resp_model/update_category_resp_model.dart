import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device_mart/domain/models/category_model/update_category_all_model/update_category_model/update_category_model.dart';

part 'update_category_resp_model.g.dart';
@JsonSerializable()
class UpdateCategoryRespModel {
  int? statusCode;
  String? error;
  List<UpdateCategoryModel>? data;
  String? message;
  UpdateCategoryRespModel({
    this.statusCode,
    this.error,
    this.data,
    this.message,
  });

  factory UpdateCategoryRespModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateCategoryRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UpdateCategoryRespModelToJson(this);
}
