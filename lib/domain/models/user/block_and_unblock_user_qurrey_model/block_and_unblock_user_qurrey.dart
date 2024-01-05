
import 'package:freezed_annotation/freezed_annotation.dart';
part 'block_and_unblock_user_qurrey.g.dart';
@JsonSerializable()
class BlockAndUnblockUserQurreyModel {
  @JsonKey(name: 'userID')
  int? id;
  BlockAndUnblockUserQurreyModel({
    this.id,
  });
  factory BlockAndUnblockUserQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$BlockAndUnblockUserQurreyModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$BlockAndUnblockUserQurreyModelToJson(this);
}
