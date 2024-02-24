import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_category_image_id_model.g.dart';

@JsonSerializable()
class AddCategoryImageIdModel {
  int? id;
  AddCategoryImageIdModel({
    this.id,
  });
  factory AddCategoryImageIdModel.fromJson(Map<String, dynamic> json) {
    return _$AddCategoryImageIdModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddCategoryImageIdModelToJson(this);
}
