import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_category_model.g.dart';

@JsonSerializable()
class UpdateCategoryModel {
  @JsonKey(name: 'category_name')
  String categoryName;
  @JsonKey(name: 'categoryID')
  int id;
  UpdateCategoryModel({required this.categoryName, required this.id});
  factory UpdateCategoryModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateCategoryModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UpdateCategoryModelToJson(this);
}
