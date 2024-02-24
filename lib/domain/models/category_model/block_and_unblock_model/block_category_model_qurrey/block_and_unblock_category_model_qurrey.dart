import 'package:freezed_annotation/freezed_annotation.dart';
part 'block_and_unblock_category_model_qurrey.g.dart';

@JsonSerializable()
class BlockAndUnblockCategoryModelQurrey {
  @JsonKey(name: 'categoryID')
  int? id;
  BlockAndUnblockCategoryModelQurrey({
    this.id,
  });

  factory BlockAndUnblockCategoryModelQurrey.fromJson(
      Map<String, dynamic> json) {
    return _$BlockAndUnblockCategoryModelQurreyFromJson(json);
  }
  Map<String, dynamic> toJson() =>
      _$BlockAndUnblockCategoryModelQurreyToJson(this);
}
