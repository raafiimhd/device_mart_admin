import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_category_qurrey_model.g.dart';

@JsonSerializable()
class GetCategoryQurreyModel {
  int? page;
  int? count;
  GetCategoryQurreyModel({
    this.page,
    this.count,
  });
  factory GetCategoryQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$GetCategoryQurreyModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetCategoryQurreyModelToJson(this);
}
