import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device_mart/domain/models/category_model/add_category_all_model/add_category_model/add_category_model.dart';
part 'add_category_resp_model.g.dart';

@JsonSerializable()
class AddCategoryRespModel {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? error;
  AddCategoryModel? data;
  String? message;
  AddCategoryRespModel({
    this.statusCode,
    this.error,
    this.data,
    this.message,
  });

  factory AddCategoryRespModel.fromJson(Map<String, dynamic> json) {
    return _$AddCategoryRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddCategoryRespModelToJson(this);
}
