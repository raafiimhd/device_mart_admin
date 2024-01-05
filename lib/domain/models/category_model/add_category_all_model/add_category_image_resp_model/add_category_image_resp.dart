import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_category_image_resp.g.dart';

@JsonSerializable()
class AddCategoryImageRespModel {
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;
  AddCategoryImageRespModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory AddCategoryImageRespModel.fromJson(Map<String, dynamic> json) {
    return _$AddCategoryImageRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddCategoryImageRespModelToJson(this);
}
