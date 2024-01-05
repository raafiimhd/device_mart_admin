import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_category_model.g.dart';

@JsonSerializable()
class GetCategoryModel {
  @JsonKey(name: 'category_name')
  final  String categoryName;
  final int id;
  final Map<String,dynamic>? images;
  @JsonKey(name: 'is_blocked')
  final bool isBlocked;
  GetCategoryModel({
     required this.categoryName,
     required this.id,
     required this.images,
     required this.isBlocked
  });

  factory GetCategoryModel.fromJson(Map<String, dynamic> json) {
    return _$GetCategoryModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetCategoryModelToJson(this);
}
