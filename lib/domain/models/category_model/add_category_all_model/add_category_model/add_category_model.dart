import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_category_model.g.dart';

@JsonSerializable()
class AddCategoryModel {
  @JsonKey(name: 'category_name')
  String? categoryName;
  int? id;
  AddCategoryModel({
    this.categoryName,
    this.id,
  });

  factory AddCategoryModel.fromJson(Map<String, dynamic> json) {
    return _$AddCategoryModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddCategoryModelToJson(this);
}
