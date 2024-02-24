import 'package:device_mart/domain/models/category_model/get_category_all_model/get_category_model/get_category_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'get_category_resp_model.g.dart';

@JsonSerializable()
class GetCategoryRespModel {
  List<GetCategoryModel>? data;
  String? message;
  String? error;
  int? statusCode;
  GetCategoryRespModel({
    required this.data,
    required this.message,
    required this.error,
    required this.statusCode,
  });

  factory GetCategoryRespModel.fromJson(Map<String, dynamic> json) {
    return _$GetCategoryRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetCategoryRespModelToJson(this);
}
